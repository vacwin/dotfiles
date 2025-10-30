package main

import (
	"flag"
	"fmt"
	"os"
	"os/exec"
	"os/signal"
	"runtime"
	"syscall"
	"time"
)

func main() {
	title := flag.String("title", "break", "Notification title")
	message := flag.String("message", "надо размяться", "Notification message")
	interval := flag.Duration("interval", time.Hour, "Interval between reminders, e.g. 1h, 30m")
	startStr := flag.String("work-start", "11:15", "Daily start time (HH:MM, local time)")
	endStr := flag.String("work-end", "18:00", "Daily end time (HH:MM, local time)")
	flag.Parse()

	loc := time.Now().Location()

	startHM, err := time.ParseInLocation("15:04", *startStr, loc)
	must(err)
	endHM, err := time.ParseInLocation("15:04", *endStr, loc)
	must(err)

	now := time.Now()
	if !isWorkday(now) {
		return
	}

	start := dayTime(now, startHM)
	end := dayTime(now, endHM)

	// Если уже после конца — выходим
	if !now.Before(end) {
		return
	}

	// Если до старта — спим до старта; после пробуждения перепроверяем
	if now.Before(start) {
		sleepUntil(start)
		if time.Now().After(end) {
			return
		}
	}

	nextFire := nextAlignedFromStart(time.Now(), start, *interval)
	if !nextFire.Before(end) {
		return
	}

	sigs := make(chan os.Signal, 1)
	signal.Notify(sigs, syscall.SIGINT, syscall.SIGTERM)

	for {
		// Жёсткая проверка дедлайна в начале каждой итерации
		if time.Now().After(end) {
			return
		}

		wait := time.Until(nextFire)
		if wait <= 0 {
			// Предохранительная проверка перед показом
			if time.Now().After(end) {
				return
			}
			notify(*title, *message)
			nextFire = nextFire.Add(*interval)
			continue
		}

		timer := time.NewTimer(wait)
		select {
		case <-timer.C:
			if time.Now().After(end) {
				return
			}
			notify(*title, *message)
			nextFire = nextFire.Add(*interval)
		case <-sigs:
			return
		}

		if !nextFire.Before(end) {
			return
		}
	}
}

func must(err error) {
	if err != nil {
		panic(err)
	}
}

func isWorkday(t time.Time) bool {
	wd := t.Weekday()
	return wd >= time.Monday && wd <= time.Friday
}

func dayTime(t time.Time, hm time.Time) time.Time {
	return time.Date(t.Year(), t.Month(), t.Day(), hm.Hour(), hm.Minute(), 0, 0, t.Location())
}

// nextAlignedFromStart вычисляет следующий "тик" строго после now,
// выравниваясь от start, без float.
func nextAlignedFromStart(now, start time.Time, interval time.Duration) time.Time {
	if now.Before(start) {
		return start.Add(interval)
	}
	elapsed := now.Sub(start)
	steps := elapsed / interval
	if elapsed%interval == 0 {
		steps++ // следующий слот, а не текущий
	} else {
		steps++
	}
	return start.Add(steps * interval)
}

func notify(title, message string) {
	var cmd *exec.Cmd
	switch runtime.GOOS {
	case "darwin":
		script := fmt.Sprintf(`display notification %q with title %q`, message, title)
		cmd = exec.Command("osascript", "-e", script)
	case "linux":
		cmd = exec.Command("notify-send", title, message, "--icon=dialog-information")
	default:
		fmt.Printf("[%s] %s\n", title, message)
		return
	}
	_ = cmd.Run()
}

func sleepUntil(t time.Time) {
	timer := time.NewTimer(time.Until(t))
	defer timer.Stop()
	<-timer.C
}
