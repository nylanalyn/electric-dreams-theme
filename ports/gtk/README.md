# Electric Dreams for GTK

> CSS override bringing the Electric Dreams glow to GTK 3 & 4 apps.

## Features

- 🖼 Dark window surfaces with subtle cyan border lines
- ✨ Buttons, entries, and cards get neon focus rings
- 🌈 Accent buttons glow in hot magenta, matching the rest of the theme
- 🧊 Rounded toggles, sliders, and progress bars with soft shadows

## Installation

### GTK 4

```bash
mkdir -p ~/.config/gtk-4.0
curl -o ~/.config/gtk-4.0/gtk.css \
  https://raw.githubusercontent.com/nylanalyn/electric-dreams-theme/main/ports/gtk/gtk.css
```

### GTK 3

```bash
mkdir -p ~/.config/gtk-3.0
curl -o ~/.config/gtk-3.0/gtk.css \
  https://raw.githubusercontent.com/nylanalyn/electric-dreams-theme/main/ports/gtk/gtk.css
```

Log out/in (or restart the relevant applications) to apply the new styles.

## Customization

- Softer glow? Reduce the alpha on the `box-shadow` lines
- Sharper corners? Lower the `border-radius` values
- Accent swap: change `@define-color electric-accent` to another palette color
- Use alongside Libadwaita? Pair with the `adw-gtk3` theme and this override

## Requirements

- GTK-based desktop apps (GNOME, XFCE, etc.)
- Optional: combine with a matching icon theme (e.g. Papirus-Nord for neon vibes)

## License

[MIT](LICENSE)
