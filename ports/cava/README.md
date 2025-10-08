# Electric Dreams Theme for CAVA

A vibrant neon gradient visualizer theme for CAVA (Console-based Audio Visualizer for ALSA).

## Preview

The theme features a dynamic gradient flowing through the Electric Dreams color palette:
- Deep Purple → Light Purple → Hot Magenta → Pink → Electric Cyan → Turquoise → Bright Cyan → White

Perfect for creating an electric, neon-lit audio visualization experience.

## Installation

### Automatic Installation

```bash
# Backup your existing config (if you have one)
mv ~/.config/cava/config ~/.config/cava/config.backup

# Create cava config directory
mkdir -p ~/.config/cava

# Download the Electric Dreams theme
curl -o ~/.config/cava/config \
  https://raw.githubusercontent.com/nylanalyn/electric-dreams-theme/main/ports/cava/config
```

### Manual Installation

1. Copy the `config` file to your CAVA config directory:
   ```bash
   mkdir -p ~/.config/cava
   cp config ~/.config/cava/config
   ```

2. Start or restart CAVA:
   ```bash
   cava
   ```

## Features

- **8-color gradient**: Smooth transitions through the Electric Dreams palette
- **Optimized EQ**: Tweaked equalizer settings for maximum visual impact
- **High framerate**: 60 FPS for smooth animations
- **Neon glow effect**: Gradient designed to simulate neon tube aesthetics
- **Black background**: Deep black (#0A0A0F) for maximum contrast

## Customization

### Adjusting the Gradient

You can customize the gradient by editing the `[color]` section in `~/.config/cava/config`:

```ini
[color]
gradient = 1
gradient_count = 8
gradient_color_1 = '#9C27B0'   # Bottom color (bass)
gradient_color_2 = '#BB86FC'
# ... (edit as needed)
gradient_color_8 = '#FFFFFF'   # Top color (peaks)
```

### Number of Bars

Change the `bars` setting in the `[general]` section:
```ini
bars = 0  # 0 = auto-fit to terminal width
```

### Sensitivity

Adjust the sensitivity if the bars are too low or too high:
```ini
sensitivity = 100  # Increase for more responsive bars
autosens = 1       # Enable automatic sensitivity adjustment
```

### Bar Appearance

```ini
bar_width = 2      # Width of each bar
bar_spacing = 1    # Space between bars
```

## Requirements

- CAVA (Console-based Audio Visualizer for ALSA)
- Terminal with true color (24-bit) support
- PulseAudio or ALSA (default: PulseAudio)

### Installing CAVA

**Arch Linux:**
```bash
sudo pacman -S cava
```

**Ubuntu/Debian:**
```bash
sudo apt install cava
```

**macOS:**
```bash
brew install cava
```

**From source:**
```bash
git clone https://github.com/karlstav/cava
cd cava
./autogen.sh
./configure
make
sudo make install
```

## Usage

Simply run:
```bash
cava
```

### Keyboard Controls

While CAVA is running:
- `q` - Quit
- `r` - Reload configuration
- Arrow keys - Adjust sensitivity (up/down) and cutoff frequencies (left/right)
- `f` - Cycle foreground color (in single color mode)
- `b` - Cycle background color

## Troubleshooting

### No bars showing
1. Check that audio is playing
2. Increase sensitivity: Edit `sensitivity` value in the config
3. Enable autosens: Set `autosens = 1`

### Colors not displaying correctly
- Ensure your terminal supports true color (24-bit)
- Test with: `echo $COLORTERM` (should output "truecolor" or "24bit")
- Terminals known to work well: Kitty, Alacritty, iTerm2, Gnome Terminal, Konsole

### Audio input issues
Check your audio source:
```bash
# List PulseAudio sources
pactl list sources short

# Edit config to use specific source
# In [input] section: source = alsa_output.pci-0000_00_1f.3.analog-stereo.monitor
```

## Integration with Electric Dreams

CAVA pairs perfectly with other Electric Dreams ports:
- Run it in a [Kitty](../kitty/) terminal with the Electric Dreams theme
- Use it in a [tmux](../tmux/) pane with matching colors
- Display it on your [Hyprland](../hyprland/) desktop for extra visual flair

### Example tmux Integration

Add this to your tmux config to have CAVA in a bottom pane:
```bash
bind C-v split-window -v -l 10 cava
```

## Color Reference

| Gradient Position | Color | Hex | Frequency Range |
|------------------|-------|-----|-----------------|
| 1 (Bottom) | Deep Purple | `#9C27B0` | Bass |
| 2 | Light Purple | `#BB86FC` | Low-Mid |
| 3 | Hot Magenta | `#FF006E` | Mid |
| 4 | Pink | `#E91E63` | Mid |
| 5 | Electric Cyan | `#00D9FF` | Mid-High |
| 6 | Turquoise | `#1DE9B6` | High |
| 7 | Bright Cyan | `#00D9FF` | Higher |
| 8 (Top) | White | `#FFFFFF` | Peaks |

## License

This theme configuration is released under the MIT License. CAVA itself is licensed under the MIT License.

## Links

- [CAVA GitHub](https://github.com/karlstav/cava)
- [Electric Dreams Theme](https://github.com/nylanalyn/electric-dreams-theme)
- [Report Issues](https://github.com/nylanalyn/electric-dreams-theme/issues)

---

Made with ⚡ and neon dreams
