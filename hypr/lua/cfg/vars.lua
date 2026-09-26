-- Shared variables for all config modules.
local dir = debug.getinfo(1, "S").source:match("^@(.*)/lua/cfg/[^/]*$")

-- Machine-specific values live in conf.d/local.conf (hyprlang syntax), because
-- hyprlock and scripts/monitor-ctl read the same file.
local function read_local_conf(path)
    local vars = {}
    local f = io.open(path, "r")
    if not f then
        return vars
    end
    for line in f:lines() do
        local key, value = line:match("^%s*%$([%w_]+)%s*=%s*(.-)%s*$")
        if key then
            vars[key] = value:gsub("%$HOME", os.getenv("HOME"))
        end
    end
    f:close()
    return vars
end

local localconf = read_local_conf(dir .. "/conf.d/local.conf")

return {
    mod       = "SUPER",
    terminal  = "ghostty",
    search    = "tofi-drun --drun-launch=true",
    cursor    = "hyprctl setcursor Banana 32",
    wallpaper = localconf.wallpaper,
    avatar    = localconf.avatar,
}
