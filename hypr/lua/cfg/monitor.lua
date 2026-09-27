-- Laptop screen policy, recomputed on every lid switch, hotplug and resume:
--   no external monitor      → eDP-1 only (lid closed → suspend)
--   external + lid closed    → external only; Hyprland moves eDP-1's workspaces over
--   external + lid open      → both on, workspaces stay where they are
local EDP = "eDP-1"

-- any external monitor: native mode, to the right of the laptop
hl.monitor({ output = "",  mode = "preferred", position = "auto-right", scale = 1 })
-- matched by description, so it works on whatever port/dock it's plugged into
hl.monitor({ output = "desc:Huawei Technologies Co. Inc. SSN-24", mode = "1920x1080@60", position = "1920x0", scale = 1 })

local function read(path)
    local f = io.open(path, "r")
    if not f then
        return nil
    end
    local s = f:read("a")
    f:close()
    return s
end

local function lid_closed()
    local s = read("/proc/acpi/button/lid/LID0/state") or read("/proc/acpi/button/lid/LID/state") or ""
    return s:find("closed") ~= nil
end

-- Kernel connector state: Hyprland can keep a stale DP-* around after resuming undocked.
local function external_connected()
    local p = io.popen("cat /sys/class/drm/card*-DP-*/status /sys/class/drm/card*-HDMI-*/status 2>/dev/null")
    local s = p:read("a")
    p:close()
    return s:find("^connected") ~= nil or s:find("\nconnected") ~= nil
end

local edp_on

-- Lua monitor rules merge per output, so `disabled` must always be explicit.
local function set_edp(on)
    if on == edp_on then
        return false
    end
    edp_on = on
    hl.monitor({ output = EDP, mode = "1920x1080@59.98", position = "0x0", scale = 1, disabled = not on })
    return true
end

-- reason: "load" | "lid" | "hotplug" | "resume"
local function apply(reason)
    local ext, closed = external_connected(), lid_closed()

    if closed and not ext then
        set_edp(true) -- so there is a screen after wake
        if reason == "lid" or reason == "hotplug" then
            hl.exec_cmd("systemctl suspend")
        end
        return
    end

    local changed = set_edp(not (ext and closed))
    if reason ~= "load" then
        hl.dispatch(hl.dsp.dpms({ action = "enable" }))
        if changed or reason == "resume" then
            hl.exec_cmd("~/dotfiles/scripts/monitor-ctl refresh")
        end
    end
end

-- let sysfs / procfs settle before looking at them
local function apply_later(reason)
    return function()
        hl.timer(function() apply(reason) end, { timeout = 500, type = "oneshot" })
    end
end

-- called by scripts/resume via `hyprctl eval`
monitor_policy = apply

apply("load")

hl.bind("switch:on:Lid Switch",  apply_later("lid"), { locked = true })
hl.bind("switch:off:Lid Switch", apply_later("lid"), { locked = true })
hl.on("monitor.added",   apply_later("hotplug"))
hl.on("monitor.removed", apply_later("hotplug"))
