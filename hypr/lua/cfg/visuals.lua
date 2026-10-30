hl.config({
    general = {
        gaps_in     = 8,
        gaps_out    = 8,
        border_size = 1,
    },

    dwindle = {
        preserve_split = true,
    },

    decoration = {
        rounding         = 4,
        active_opacity   = 1,
        inactive_opacity = 0.5,
    },

    animations = {
        enabled = true,
    },

    misc = {
        disable_hyprland_logo    = true,
        disable_splash_rendering = true,
        -- lets a hung hyprlock be killed and relaunched instead of the red "lockscreen died" screen
        allow_session_lock_restore = true,
    },
})

-- Border colors follow gsettings color-scheme (set by scripts/theme, which
-- re-applies them via `hyprctl eval 'apply_theme()'`).
local borders = {
    dark  = { active_border = "rgb(7799bb)", inactive_border = "rgb(222222)" }, -- Black Metal (Immortal)
    light = { active_border = "rgb(268bd2)", inactive_border = "rgb(93a1a1)" }, -- Solarized Light
}

function apply_theme()
    local p = io.popen("gsettings get org.gnome.desktop.interface color-scheme 2>/dev/null")
    local scheme = p and p:read("*a") or ""
    if p then p:close() end
    local mode = scheme:find("light") and "light" or "dark"
    hl.config({ general = { col = borders[mode] } })
end

apply_theme()
