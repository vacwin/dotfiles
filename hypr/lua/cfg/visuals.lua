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
        allow_session_lock_restore = true,
    },
})

-- palette.lua is generated from themes/<name>.conf by scripts/theme.
-- Read it on every apply_theme() so a palette edit + `theme sync` is enough
-- (no full `hyprctl reload` needed).
local dir = debug.getinfo(1, "S").source:match("^@(.*)/[^/]*$")

local function load_palette()
    local ok, palette = pcall(dofile, dir .. "/palette.lua")
    if ok and type(palette) == "table" then
        return palette
    end
    return nil
end

function apply_theme()
    local p = io.popen("gsettings get org.gnome.desktop.interface color-scheme 2>/dev/null")
    local scheme = p and p:read("*a") or ""
    if p then p:close() end
    local mode = scheme:find("light") and "light" or "dark"
    local palette = load_palette()
    if not palette then
        return
    end
    hl.config({ general = { col = palette[mode] } })
end

-- translucent waybar: blur the wallpaper/windows behind the bar
hl.layer_rule({
    match = { namespace = "waybar" },
    blur = true,
    ignore_alpha = 0.1,
})

apply_theme()
