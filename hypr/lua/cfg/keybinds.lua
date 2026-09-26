local vars = require("cfg.vars")
local mod = vars.mod
local exec = hl.dsp.exec_cmd

-- apps
hl.bind(mod .. " + Return", exec(vars.terminal))
hl.bind(mod .. " + space",  exec(vars.search))

-- clipboard history
hl.bind(mod .. " + v", exec('cliphist list | tofi --prompt-text "clip: " | cliphist decode | wl-copy'))

-- lock
hl.bind(mod .. " + CTRL + q", exec("hyprlock"))

-- window management
hl.bind(mod .. " + q", hl.dsp.window.close())
hl.bind(mod .. " + f", hl.dsp.window.fullscreen({ mode = "fullscreen" }))

-- reload
hl.bind(mod .. " + c", exec("hyprctl reload"))

-- focus / move windows (vim keys and arrows)
local directions = {
    { vim = "h", arrow = "left",  dir = "left"  },
    { vim = "j", arrow = "down",  dir = "down"  },
    { vim = "k", arrow = "up",    dir = "up"    },
    { vim = "l", arrow = "right", dir = "right" },
}
for _, d in ipairs(directions) do
    hl.bind(mod .. " + " .. d.vim,           hl.dsp.focus({ direction = d.dir }))
    hl.bind(mod .. " + SHIFT + " .. d.vim,   hl.dsp.window.move({ direction = d.dir }))
    hl.bind(mod .. " + SHIFT + " .. d.arrow, hl.dsp.window.move({ direction = d.dir }))
end

local function exit_keys()
    hl.bind("Return",   hl.dsp.submap("reset"))
    hl.bind("Escape",   hl.dsp.submap("reset"))
    hl.bind("catchall", hl.dsp.submap("reset"))
end

-- resize submap
local resize_step = {
    left  = { x = -20, y = 0 },
    down  = { x = 0,   y = 20 },
    up    = { x = 0,   y = -20 },
    right = { x = 20,  y = 0 },
}
hl.bind(mod .. " + SHIFT + r", hl.dsp.submap("R"))
hl.define_submap("R", function()
    for _, d in ipairs(directions) do
        local step = resize_step[d.dir]
        local resize = hl.dsp.window.resize({ x = step.x, y = step.y, relative = true })
        hl.bind(d.vim,   resize, { repeating = true })
        hl.bind(d.arrow, resize, { repeating = true })
    end
    hl.bind("f", hl.dsp.window.float())
    exit_keys()
end)

-- layout submap
hl.bind(mod .. " + SHIFT + w", hl.dsp.submap("L"))
hl.define_submap("L", function()
    hl.bind("s", hl.dsp.layout("togglesplit"))
    hl.bind("w", hl.dsp.layout("swapsplit"))
    hl.bind("r", hl.dsp.layout("movetoroot"))
    hl.bind("f", hl.dsp.window.float())
    hl.bind("p", hl.dsp.window.pseudo())
    hl.bind("c", hl.dsp.window.center())
    hl.bind("t", hl.dsp.window.pin())
    exit_keys()
end)

-- workspaces
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mod .. " + " .. key,         hl.dsp.focus({ workspace = i }))
    hl.bind(mod .. " + SHIFT + " .. key, hl.dsp.window.move({ workspace = i }))
end

-- volume
hl.bind("XF86AudioRaiseVolume", exec("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+ --limit 2.0"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", exec("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),             { locked = true, repeating = true })
hl.bind("XF86AudioMute",        exec("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),            { locked = true })
hl.bind("XF86AudioMicMute",     exec("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),          { locked = true })

-- media
hl.bind("XF86AudioPlay",  exec("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPause", exec("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioNext",  exec("playerctl next"),       { locked = true })
hl.bind("XF86AudioPrev",  exec("playerctl previous"),   { locked = true })

-- brightness
hl.bind("XF86MonBrightnessUp",   exec("brightnessctl set +10%"), { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown", exec("brightnessctl set 10%-"), { locked = true, repeating = true })

-- screenshots
hl.bind("Print",                   exec("grim ~/Pictures/screenshots/full-desktop-screenshot-$(date +%Y-%m-%d_%H-%M-%S).png"))
hl.bind(mod .. " + Print",         exec('grim -g "$(slurp)" ~/Pictures/screenshots/screenshot-$(date +%Y-%m-%d_%H-%M-%S).png'))
hl.bind("SHIFT + Print",           exec("grim - | copy"))
hl.bind(mod .. " + SHIFT + Print", exec('grim -g "$(slurp)" - | copy'))

-- notifications
hl.bind(mod .. " + n", exec("swaync-client -t"))

-- keyboard layout switch
hl.bind("CTRL + space", exec("~/dotfiles/scripts/switch-layout"))
