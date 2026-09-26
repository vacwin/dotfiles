-- Entry point. install.sh symlinks this file and lua/ into ~/.config/hypr,
-- so modules resolve through the symlinked lua/ directory.
local dir = debug.getinfo(1, "S").source:match("^@(.*)/[^/]*$")
package.path = dir .. "/lua/?.lua;" .. package.path

-- drop cached modules so `hyprctl reload` picks up edits
for name in pairs(package.loaded) do
    if name:match("^cfg%.") then
        package.loaded[name] = nil
    end
end

hl.env("XCURSOR_THEME", "Banana")
hl.env("XCURSOR_SIZE", "32")

require("cfg.monitor")
require("cfg.keybinds")
require("cfg.input")
require("cfg.autostart")
require("cfg.visuals")
