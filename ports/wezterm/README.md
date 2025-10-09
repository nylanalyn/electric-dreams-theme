# Electric Dreams for WezTerm

> Cyberpunk terminal palette with cyan cursor glow and magenta tab accents.

## Features

- 🎨 Registers an `Electric Dreams` color scheme with foreground/background + palette
- 🧭 Minimal tab bar styling that mirrors the Waybar/Hyprland look
- 💤 Dimmed inactive panes so focus glow stands out
- 🪟 Comfortable window padding for transparent backgrounds

## Installation

### Drop-in configuration

```bash
mkdir -p ~/.config/wezterm
curl -o ~/.config/wezterm/electric_dreams.lua \
  https://raw.githubusercontent.com/nylanalyn/electric-dreams-theme/main/ports/wezterm/electric_dreams.lua
```

Then, in your `wezterm.lua`:

```lua
local wezterm = require("wezterm")
local electric_dreams = require("electric_dreams")

return wezterm.extend_config(electric_dreams)
```

### Manual include

If you already return a config table, merge the color fields:

```lua
local electric_dreams = require("electric_dreams")

return {
  color_schemes = electric_dreams.color_schemes,
  color_scheme = electric_dreams.color_scheme,
  window_padding = electric_dreams.window_padding,
  inactive_pane_hsb = electric_dreams.inactive_pane_hsb,
  use_fancy_tab_bar = electric_dreams.use_fancy_tab_bar,
}
```

## Customization

- Prefer the fancy tab bar? Set `use_fancy_tab_bar = true`
- Want a thicker border between panes? Adjust `inactive_pane_hsb`
- Swap cursor shape: `default_cursor_style = "SteadyBar"` or similar

## Requirements

- WezTerm 20230408-112425-69ae8472 or newer
- True color support in your terminal environment

## License

[MIT](LICENSE)
