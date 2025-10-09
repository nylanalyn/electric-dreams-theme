# Electric Dreams for Alacritty

> GPU terminal palette with cyan cursor glow and magenta highlights.

## Features

- 🎨 Full primary/bright palette tuned for Electric Dreams colors
- ✨ Cyan beam cursor with magenta visual bell pulse
- 📐 Dynamic padding for comfy window borders
- 🔔 Optional notification pulse (disabled by default)

## Installation

### Quick import

```bash
mkdir -p ~/.config/alacritty/colors
curl -o ~/.config/alacritty/colors/electric-dreams.yml \
  https://raw.githubusercontent.com/nylanalyn/electric-dreams-theme/main/ports/alacritty/electric-dreams.yml
```

Add to your `alacritty.yml`:

```yaml
import:
  - ~/.config/alacritty/colors/electric-dreams.yml
```

### Direct include

Copy the contents of `electric-dreams.yml` into the `colors:` section of your existing `alacritty.yml`.

## Options

- Change cursor style: edit the `cursor.style` block (e.g. `shape: Block`)
- Disable the glow bell: set `bell.duration: 0` or remove the block entirely
- Adjust padding: tweak `window.padding.x` / `y`

## Requirements

- Alacritty 0.12 or newer
- True color (24-bit) terminal support
- JetBrainsMono Nerd Font (optional, matches theme typography)

## License

[MIT](LICENSE)
