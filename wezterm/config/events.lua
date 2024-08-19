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
