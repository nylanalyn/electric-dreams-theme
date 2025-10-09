# Electric Dreams for Rofi

> Neon launcher theme with electric cyan highlights and magenta selection glow.

## Features

- 🎨 Cohesive Electric Dreams color palette
- 💡 Real transparency support for Wayland and X11 compositors
- 🔍 Bold search prompt with cyan underline accent
- 🖼 Icon-friendly layout with comfortable spacing
- 🧩 Works with both `drun` and `window` modi

## Installation

### Quick install

```bash
mkdir -p ~/.config/rofi/themes
curl -o ~/.config/rofi/themes/electric-dreams.rasi \
  https://raw.githubusercontent.com/nylanalyn/electric-dreams-theme/main/ports/rofi/electric-dreams.rasi
```

Then launch rofi with the theme:

```bash
rofi -show drun -theme ~/.config/rofi/themes/electric-dreams.rasi
```

### Persistent configuration

Create or edit `~/.config/rofi/config.rasi` (or `config`):

```rasi
configuration {
  theme: "electric-dreams";
}
```

Ensure the theme file is available:

```bash
ln -sf ~/.config/rofi/themes/electric-dreams.rasi \
  ~/.config/rofi/electric-dreams.rasi
```

### Hyprland / Wayland binding

```ini
bind = $mod, D, exec, rofi -show drun -theme ~/.config/rofi/themes/electric-dreams.rasi
```

## Customization

- Change the prompt text: edit the `prompt` block in `electric-dreams.rasi`
- Increase width: adjust `window { width: 600px; }`
- More rows: tweak `listview { lines: 8; }`
- Use blur behind rofi: enable blur in your compositor (Hyprland `layerrule = blur, rofi`)

## Requirements

- Rofi 1.7.0+ (or Rofi-wayland fork)
- JetBrainsMono Nerd Font (optional, matches theme typography)
- Compositor with true transparency for the full effect

## License

[MIT](LICENSE)
