package main

import (
	"flag"
	"fmt"
	"net"
	"os"
	"os/exec"
	"os/signal"
	"strconv"
	"strings"
	"syscall"
	"time"
)

var sockPath = fmt.Sprintf("%s/hypr/%s/.socket.sock",
	os.Getenv("XDG_RUNTIME_DIR"), os.Getenv("HYPRLAND_INSTANCE_SIGNATURE"))

func hypr(cmd string) (string, error) {
	c, err := net.Dial("unix", sockPath)
	if err != nil {
		return "", err
	}
	defer c.Close()
	if _, err = c.Write([]byte(cmd)); err != nil {
		return "", err
	}
	buf := make([]byte, 256)
	n, _ := c.Read(buf)
	return string(buf[:n]), nil
}

func cursorX() (int, bool) {
	resp, err := hypr("cursorpos")
	if err != nil {
		return 0, false
	}
	comma := strings.IndexByte(resp, ',')
	if comma < 0 {
		return 0, false
	}
	x, err := strconv.Atoi(strings.TrimSpace(resp[:comma]))
	if err != nil {
		return 0, false
	}
	return x, true
}

func main() {
	defaultTheme := os.Getenv("XCURSOR_THEME")
	if defaultTheme == "" {
		defaultTheme = "default"
	}
	defaultSize := 30
	if s, err := strconv.Atoi(os.Getenv("XCURSOR_SIZE")); err == nil && s > 0 {
		defaultSize = s
	}

	theme := flag.String("theme", defaultTheme, "cursor theme")
	normal := flag.Int("normal", defaultSize, "normal cursor size")
	big := flag.Int("big", 64, "enlarged cursor size")
	hold := flag.Duration("hold", 1500*time.Millisecond, "how long to stay big")
	poll := flag.Duration("poll", 16*time.Millisecond, "polling interval")
	window := flag.Duration("window", 700*time.Millisecond, "shake detection window")
	needed := flag.Int("needed", 4, "direction reversals needed to trigger")
	seg := flag.Int("seg", 45, "min px per swing for a reversal to count")
	flag.Parse()

	setSize := func(size int) {
		exec.Command("hyprctl", "setcursor", *theme, strconv.Itoa(size)).Run()
	}

	sig := make(chan os.Signal, 1)
	signal.Notify(sig, syscall.SIGINT, syscall.SIGTERM)
	go func() {
		<-sig
		setSize(*normal)
		os.Exit(0)
	}()

	fmt.Printf("shake-cursor: theme=%s normal=%d big=%d hold=%s needed=%d seg=%dpx window=%s\n",
		*theme, *normal, *big, *hold, *needed, *seg, *window)

	var prevX int
	haveX := false
	curDir := 0
	segLen := 0
	var reversals []time.Time
	enlarged := false
	var expire time.Time

	for {
		time.Sleep(*poll)
		now := time.Now()

		x, ok := cursorX()
		if !ok {
			continue
		}
		if !haveX {
			prevX, haveX = x, true
			continue
		}

		dx := x - prevX
		prevX = x

		if dx != 0 {
			d := 1
			adx := dx
			if dx < 0 {
				d, adx = -1, -dx
			}
			if curDir == 0 || d == curDir {
				segLen += adx
				curDir = d
			} else {
				if segLen >= *seg {
					reversals = append(reversals, now)
				}
				segLen = adx
				curDir = d
			}
		}

		cut := 0
		for cut < len(reversals) && now.Sub(reversals[cut]) > *window {
			cut++
		}
		reversals = reversals[cut:]

		if len(reversals) >= *needed {
			expire = now.Add(*hold)
			if !enlarged {
				setSize(*big)
				enlarged = true
			}
			reversals = reversals[:0]
		}

		if enlarged && now.After(expire) {
			setSize(*normal)
			enlarged = false
		}
	}
}
