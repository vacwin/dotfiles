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
	flag.Parse()

	ticker := time.NewTicker(*interval)
	defer ticker.Stop()
	notify(*title, *message)
	sigs := make(chan os.Signal, 1)
	signal.Notify(sigs, syscall.SIGINT, syscall.SIGTERM)

	for {
		select {
		case <-ticker.C:
			notify(*title, *message)
		case <-sigs:
			return
		}
	}
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
