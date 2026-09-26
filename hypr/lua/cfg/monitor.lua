hl.monitor({ output = "eDP-1", mode = "1920x1080@59.98", position = "0x0",    scale = 1 })
hl.monitor({ output = "DP-1",  mode = "1920x1080@60",    position = "1920x0", scale = 1 })
hl.monitor({ output = "DP-2",  mode = "1920x1080@60",    position = "1920x0", scale = 1 })

hl.bind("switch:on:Lid Switch",  hl.dsp.exec_cmd("~/dotfiles/scripts/monitor-ctl close"), { locked = true })
hl.bind("switch:off:Lid Switch", hl.dsp.exec_cmd("~/dotfiles/scripts/monitor-ctl open"),  { locked = true })
