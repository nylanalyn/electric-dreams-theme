# Electric Dreams for Hyprland

> A bold neon theme featuring electric cyan, hot magenta, and vibrant purple on deep black backgrounds.

![Electric Dreams Theme](https://via.placeholder.com/800x400/0A0A0F/00D9FF?text=Electric+Dreams+Hyprland)

## Features

- **High contrast** design with dramatic neon colors
- **Smooth animations** with custom bezier curves
- **Glowing effects** with colored shadows
- **Electric cyan** active borders with gradient
- **Magenta glow** shadows for depth
- **Blur effects** for modern aesthetic
- Complete **Hyprland** window manager configuration
- Matching **Hyprlock** screen locker theme

## Preview

### Hyprland Features
- Electric cyan gradient borders for active windows
- Cool gray borders for inactive windows
- Magenta and cyan glowing shadows
- Smooth overshot animations
- Blur effects on bars and notifications
- 8px rounding for modern look

### Hyprlock Features
- Neon time display with cyan glow
- Magenta date label
- Turquoise user greeting
- Electric cyan input field border
- Animated neon rings around input
- Battery and keyboard layout indicators
- Caps lock warning

## Installation

### Hyprland Theme

#### Option 1: Source the theme file

1. Download or clone this repository
2. Copy the theme to your Hyprland config directory:

```bash
mkdir -p ~/.config/hypr/themes
cp hyprland.conf ~/.config/hypr/themes/electric-dreams.conf
```

3. Source it in your `~/.config/hypr/hyprland.conf`:

```conf
source = ~/.config/hypr/themes/electric-dreams.conf
```

#### Option 2: Direct integration

Copy the contents of `hyprland.conf` directly into your `~/.config/hypr/hyprland.conf` file.

### Hyprlock Theme

1. Copy the Hyprlock configuration:

```bash
cp hyprlock.conf ~/.config/hypr/hyprlock.conf
```

Or if you want to keep it separate:

```bash
mkdir -p ~/.config/hypr/themes
cp hyprlock.conf ~/.config/hypr/themes/electric-dreams-lock.conf
```

Then in your main hyprlock config, source it:

```conf
source = ~/.config/hypr/themes/electric-dreams-lock.conf
```

2. Make sure you have the required font installed:

```bash
# For Arch/Manjaro
sudo pacman -S ttf-jetbrains-mono-nerd

# For Ubuntu/Debian
sudo apt install fonts-jetbrains-mono

# Or download from: https://www.nerdfonts.com/
```

## Configuration

### Customizing Colors

All colors are defined using RGBA format. Here are the main theme colors:

| Element | Color | Code |
|---------|-------|------|
| Active Border | Electric Cyan | `rgba(00d9ffee)` |
| Inactive Border | Cool Gray | `rgba(4a4a6ab3)` |
| Shadow | Hot Magenta | `rgba(ff006e4d)` |
| Background | Pure Black | `rgba(0a0a0fff)` |
| Success/Check | Turquoise | `rgba(1de9b6ff)` |
| Error/Fail | Vivid Crimson | `rgba(ff1744ff)` |
| Text | Light Lavender | `rgba(d0d0e0ff)` |

### Adjusting Gaps and Borders

Edit these values in the theme file:

```conf
general {
    gaps_in = 5      # Inner gaps between windows
    gaps_out = 10    # Outer gaps from screen edge
    border_size = 2  # Border thickness
}
```

### Customizing Animations

The theme uses three bezier curves:

```conf
bezier = smoothOut, 0.36, 0, 0.66, -0.56
bezier = smoothIn, 0.25, 1, 0.5, 1
bezier = overshot, 0.05, 0.9, 0.1, 1.1  # Bouncy effect
```

Adjust animation speeds by changing the second parameter:

```conf
animation = windows, 1, 5, overshot, slide
#                    ^ ^
#                    | duration (higher = slower)
#                    enable
```

### Hyprlock Customization

#### Change Time Format

Edit the time label in `hyprlock.conf`:

```conf
text = cmd[update:1000] echo "<span foreground='##00d9ff'>$(date +'%H:%M')</span>"
# Change to 12-hour format:
text = cmd[update:1000] echo "<span foreground='##00d9ff'>$(date +'%I:%M %p')</span>"
```

#### Add Profile Picture

Uncomment the image section in `hyprlock.conf`:

```conf
image {
    monitor =
    path = ~/.face  # or path to your profile picture
    size = 100
    border_size = 2
    border_color = rgba(00d9ffff)
    rounding = -1
    position = 0, 40
    halign = center
    valign = center
}
```

#### Disable Neon Rings

Comment out or remove the `shape` sections at the bottom of `hyprlock.conf`.

## Color Palette

| Color Name | Hex | RGBA | Usage |
|------------|-----|------|-------|
| Pure Black | `#0A0A0F` | `rgba(0a0a0fff)` | Background |
| Dark Navy | `#1A1A2E` | `rgba(1a1a2eff)` | Input backgrounds |
| Cool Purple-Gray | `#4A4A6A` | `rgba(4a4a6ab3)` | Inactive borders |
| Light Lavender | `#D0D0E0` | `rgba(d0d0e0ff)` | Text |
| Electric Cyan | `#00D9FF` | `rgba(00d9ffee)` | Active borders |
| Turquoise | `#1DE9B6` | `rgba(1de9b6ff)` | Success |
| Hot Magenta | `#FF006E` | `rgba(ff006eee)` | Groups, accents |
| Vivid Crimson | `#FF1744` | `rgba(ff1744ff)` | Errors |
| Vibrant Purple | `#9C27B0` | `rgba(9c27b0ff)` | Info |
| Soft Violet | `#BB86FC` | `rgba(bb86fcff)` | Subtle accents |

## Requirements

- **Hyprland** v0.34.0 or later
- **Hyprlock** v0.3.0 or later (for lock screen)
- **JetBrainsMono Nerd Font** (for best appearance)
- Terminal with true color support

## Tips

### Application-Specific Border Colors

Add custom border colors for specific apps by adding window rules:

```conf
# Firefox with turquoise border
windowrulev2 = bordercolor rgba(1de9b6ee), class:(firefox)

# Kitty terminal with magenta border
windowrulev2 = bordercolor rgba(ff006eee), class:(kitty)

# Discord with purple border
windowrulev2 = bordercolor rgba(9c27b0ee), class:(discord)
```

### Match with Other Components

This theme works great with:
- **Waybar** - use the Electric Dreams colors in your Waybar config
- **Rofi** - apply the color scheme to your Rofi theme
- **Dunst/Mako** - match notification colors
- **Terminal** - use the base colors in your terminal emulator

## Troubleshooting

### Colors Look Wrong

Make sure your terminal supports true colors (24-bit color). Test with:

```bash
printf "\x1b[38;2;0;217;255mTRUECOLOR\x1b[0m\n"
```

If you don't see cyan text, your terminal doesn't support true colors.

### Hyprlock Labels Not Showing

Some labels in Hyprlock require additional commands:
- Battery: needs `/sys/class/power_supply/BAT*/capacity`
- Keyboard layout: requires `jq` (`sudo pacman -S jq` or `sudo apt install jq`)

### Blur Not Working

Older GPUs may struggle with blur. Try reducing:

```conf
blur {
    size = 4        # Reduced from 8
    passes = 2      # Reduced from 3
}
```

## Related Projects

- [Electric Dreams](https://github.com/nylanalyn/electric-dreams-theme) - Main theme repository
- [Electric Dreams for Vim](https://github.com/nylanalyn/electric-dreams-theme) - Vim colorscheme

## Contributing

Found a bug or want to suggest an improvement? Open an issue or pull request!

## License

MIT License - see LICENSE file for details

## Credits

Created by [nylan](https://github.com/nylanalyn)

Inspired by neon aesthetics and cyberpunk design.
