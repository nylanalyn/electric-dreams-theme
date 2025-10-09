-- Electric Dreams color scheme for WezTerm
-- Author: nylan (https://nylan.cat/electric-dreams-theme/)

local colors = {
  foreground = "#D0D0E0",
  background = "#0A0A0F",
  cursor_bg = "#00D9FF",
  cursor_border = "#00D9FF",
  cursor_fg = "#0A0A0F",
  selection_bg = "#00D9FF33",
  selection_fg = "#0A0A0F",
  ansi = {
    "#0A0A0F", -- black
    "#FF1744", -- red
    "#1DE9B6", -- green
    "#FF006E", -- yellow / hot magenta
    "#00D9FF", -- blue / electric cyan
    "#9C27B0", -- magenta / deep purple
    "#4ED9FF", -- cyan highlight
    "#D0D0E0", -- white
  },
  brights = {
    "#151520",
    "#FF4A66",
    "#4DF3C9",
    "#FF4FA0",
    "#33E3FF",
    "#BB86FC",
    "#6BEFEF",
    "#E8E8F0",
  },
  tab_bar = {
    background = "#0A0A0F",
    active_tab = {
      bg_color = "#151520",
      fg_color = "#00D9FF",
      intensity = "Bold",
    },
    inactive_tab = {
      bg_color = "#151520",
      fg_color = "#4A4A6A",
    },
    inactive_tab_hover = {
      bg_color = "#1A1A2E",
      fg_color = "#FF006E",
      intensity = "Bold",
    },
    new_tab = {
      bg_color = "#151520",
      fg_color = "#4A4A6A",
    },
    new_tab_hover = {
      bg_color = "#1A1A2E",
      fg_color = "#00D9FF",
      intensity = "Bold",
    },
  },
}

return {
  color_schemes = {
    ["Electric Dreams"] = colors,
  },
  color_scheme = "Electric Dreams",
  window_padding = {
    left = 8,
    right = 8,
    top = 6,
    bottom = 6,
  },
  inactive_pane_hsb = {
    saturation = 0.85,
    brightness = 0.8,
  },
  use_fancy_tab_bar = false,
}
