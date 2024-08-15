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
    return "Night Owl"
  else
    return "Light Owl"
  end
end


-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

config.automatically_reload_config = true
config.use_fancy_tab_bar = false
config.font = wezterm.font("JetBrains Mono")
config.font_size = 14.0
config.initial_rows = 60
config.initial_cols = 140
config.default_cursor_style = "SteadyBar"
config.enable_scroll_bar = true
config.line_height = 1.05
config.hide_tab_bar_if_only_one_tab = true
config.tab_max_width = 32

config.color_schemes = {
  ['Night Owl'] = {
    foreground = '#d6deeb',
    background = '#011627',
    selection_bg = '#1b90dd',
    ansi = {
      "#011627",
      "#ef5350",
      "#22da6e",
      "#c5e478",
      "#82aaff",
      "#c792ea",
      "#21c7a8",
      "#ffffff",
    },
    brights = {
      "#575656",
      "#ef5350",
      "#22da6e",
      "#c5e478",
      "#82aaff",
      "#c792ea",
      "#21c7a8",
      "#ffffff",
    },
  },
  ['Light Owl'] = {
    foreground = '#403f53',
    background = '#F6F6F6',
    selection_bg = '#1b90dd',
    ansi = {
      "#403f53",
      "#de3d3b",
      "#08916a",
      "#daaa01",
      "#288ed7",
      "#d6438a",
      "#2AA298",
      "#F0F0F0",
    },
    brights = {
      "#403f53",
      "#de3d3b",
      "#08916a",
      "#daaa01",
      "#288ed7",
      "#d6438a",
      "#2AA298",
      "#F0F0F0",
    },
  },
}
config.color_scheme = scheme_for_appearance(get_appearance())

-- END CONFIG

return config
