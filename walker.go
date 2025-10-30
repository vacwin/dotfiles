package main

import (
	"flag"
	"fmt"
	"math"
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

	if !now.Before(end) {
		return
	}

	if now.Before(start) {
		sleepUntil(start)
	}

	nextFire := nextAlignedFromStart(time.Now(), start, *interval)

	if !nextFire.Before(end) {
		return
	}

	sigs := make(chan os.Signal, 1)
	signal.Notify(sigs, syscall.SIGINT, syscall.SIGTERM)

	for {
		wait := time.Until(nextFire)
		if wait <= 0 {
			notify(*title, *message)
			nextFire = nextFire.Add(*interval)
		} else {
			timer := time.NewTimer(wait)
			select {
			case <-timer.C:
				notify(*title, *message)
				nextFire = nextFire.Add(*interval)
			case <-sigs:
				return
			}
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

func nextAlignedFromStart(now, start time.Time, interval time.Duration) time.Time {
	if now.Before(start) {
		return start.Add(interval)
	}
	elapsed := now.Sub(start)
	step := math.Ceil(float64(elapsed) / float64(interval))
	if step < 1 {
		step = 1
	}
	return start.Add(time.Duration(step) * interval)
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
