-- Pull in the wezterm API
local wezterm = require "wezterm"

function get_appearance()
  if wezterm.gui then
    return wezterm.gui.get_appearance()
  end

  return "Dark"
end

function scheme_for_appearance(appearance)
  if appearance:find "Dark" then
    return "NightOwl (Gogh)"
  else
    return "Night Owlish Light"
  end
end


-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.automatically_reload_config = true
config.use_fancy_tab_bar = false
config.color_scheme = scheme_for_appearance(get_appearance())
config.font = wezterm.font("JetBrains Mono")
config.font_size = 14.0
config.initial_rows = 60
config.initial_cols = 140

-- END CONFIG

return config
