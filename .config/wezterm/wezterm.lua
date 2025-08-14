local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- Toggle the tab bar visibility
wezterm.on('toggle-settings', function(window)
  local overrides = window:get_config_overrides() or {}
  enable_tab_bar = not enable_tab_bar
  overrides.enable_tab_bar = enable_tab_bar
  window:set_config_overrides(overrides)
end)

config = {
  --------------------- Miscellaneous --------------------- 

  automatically_reload_config = true, -- automatic reload the config file
  window_close_confirmation = "NeverPrompt", -- no close confirm
  keys = {
    {key = 'F2', action = wezterm.action({ EmitEvent = 'toggle-settings' }),},
  },

  --------------------- Font ---------------------

  font = wezterm.font("RobotoMono Nerd Font Mono", { weight = "Regular" }),
  font_size = 11.5, -- size font

  --------------------- Appearance --------------------- 

  default_cursor_style = "SteadyBlock", -- cursor
  color_scheme = "Tokyo Night", -- color theme
  window_background_opacity = 0.85, -- "0.0 = translucent" - "1.0 opaque"
  initial_cols = 86, -- windows hight
  initial_rows = 23, -- windows width
  window_decorations = "RESIZE",
  enable_tab_bar = false, -- disable tab bar

  --------------------- Hyper-Links --------------------- 

  hyperlink_rules = {
    -- Matches: a URL in parens: (URL)
    {
      regex = "\\((\\w+://\\S+)\\)",
      format = "$1",
      highlight = 1,
    },
    -- Matches: a URL in brackets: [URL]
    {
      regex = "\\[(\\w+://\\S+)\\]",
      format = "$1",
      highlight = 1,
    },
    -- Matches: a URL in curly braces: {URL}
    {
      regex = "\\{(\\w+://\\S+)\\}",
      format = "$1",
      highlight = 1,
    },
    -- Matches: a URL in angle brackets: <URL>
    {
      regex = "<(\\w+://\\S+)>",
      format = "$1",
      highlight = 1,
    },
    -- Then handle URLs not wrapped in brackets
    {
      regex = "[^(]\\b(\\w+://\\S+[)/a-zA-Z0-9-]+)",
      format = "$1",
      highlight = 1,
    },
    -- implicit mailto link
    {
      regex = "\\b\\w+@[\\w-]+(\\.[\\w-]+)+\\b",
      format = "mailto:$0",
    },
  },
}
return config
