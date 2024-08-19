local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "tokyonight_moon"
config.font = wezterm.font("JetBrains Mono Nerd Font")
config.font_size = 11
config.line_height = 1.1

return config
