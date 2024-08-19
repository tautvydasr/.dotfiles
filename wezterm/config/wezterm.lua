local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "tokyonight_moon"
config.font = wezterm.font({
  family = "JetBrains Mono Nerd Font",
  harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
})
config.font_size = 11
config.line_height = 1.1

require("events")

return config
