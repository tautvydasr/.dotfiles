local wezterm = require("wezterm")

wezterm.on("user-var-changed", function(window, pane, name, value)
  if name == "NVIM_PADDING" then
    local overrides = window:get_config_overrides() or {}

    if value == "enabled" then
      overrides.window_padding = {
        left = 0,
        right = 0,
        top = 0,
        bottom = 0,
      }
    else
      overrides.window_padding = {}
    end

    window:set_config_overrides(overrides)
  end
end)

wezterm.on("window-config-reloaded", function(window)
  if string.find(wezterm.gui.screens().active.name, "Retina Display") then
    local overrides = window:get_config_overrides() or {}
    overrides.font_size = 12.8
    overrides.line_height = 1.2

    window:set_config_overrides(overrides)
  end
end)
