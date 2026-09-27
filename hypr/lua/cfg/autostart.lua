local vars = require("cfg.vars")

hl.on("hyprland.start", function()
    hl.exec_cmd("awww-daemon")
    if vars.wallpaper then
        hl.exec_cmd("sleep 3 && awww img '" .. vars.wallpaper .. "'")
    end
    hl.exec_cmd(vars.cursor)
    hl.exec_cmd("systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
    hl.exec_cmd("swaync")
    hl.exec_cmd("waybar")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("mpris-proxy")
    hl.exec_cmd("solaar -w hide")
    hl.exec_cmd("hyprsunset")

    -- clipboard history (cliphist)
    hl.exec_cmd("wl-paste --type text --watch cliphist store")
    hl.exec_cmd("wl-paste --type image --watch cliphist store")
    hl.exec_cmd("wl-paste --type text --watch wl-copy --primary")
end)
