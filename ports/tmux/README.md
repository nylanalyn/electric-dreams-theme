# Electric Dreams for tmux

A neon-inspired tmux theme featuring electric cyan and hot magenta accents.

## Features

- 🎨 Vibrant neon color palette
- ✨ Electric cyan active pane borders
- 🌈 Magenta active window highlights
- 🔥 Color-coded status bar modules
- 💫 Clean, modern design

## Installation

### Quick Install (Download the theme file)

```bash
# Create theme directory
mkdir -p ~/.config/tmux/themes

# Download the theme
curl -o ~/.config/tmux/themes/electric-dreams.conf \
  https://raw.githubusercontent.com/nylanalyn/electric-dreams-theme/main/ports/tmux/electric-dreams.conf

# Source it from ~/.tmux.conf
echo "source-file ~/.config/tmux/themes/electric-dreams.conf" >> ~/.tmux.conf

# Reload tmux
tmux source ~/.tmux.conf
```

### Clone the repository

```bash
git clone https://github.com/nylanalyn/electric-dreams-theme ~/.config/tmux/themes/electric-dreams
```

Then source either format from your `~/.tmux.conf`:

```bash
# Standard configuration file
source-file ~/.config/tmux/themes/electric-dreams/ports/tmux/electric-dreams.conf

# Or use the variable-based format
source-file ~/.config/tmux/themes/electric-dreams/ports/tmux/electric-dreams.tmuxtheme
```

Reload tmux after making changes:

```bash
tmux source ~/.tmux.conf
```

### Manual copy-paste

1. Open the raw theme file in your browser:
   - https://raw.githubusercontent.com/nylanalyn/electric-dreams-theme/main/ports/tmux/electric-dreams.conf
2. Create the directory if needed:
   ```bash
   mkdir -p ~/.config/tmux/themes
   ```
   Then paste the contents into `~/.config/tmux/themes/electric-dreams.conf`
3. Add `source-file ~/.config/tmux/themes/electric-dreams.conf` to `~/.tmux.conf`
4. Run `tmux source ~/.tmux.conf`

## Color Palette

- **Electric Cyan**: `#00d9ff` - Active borders, highlights
- **Hot Magenta**: `#ff006e` - Active window, selection
- **Deep Purple**: `#9c27b0` - Date indicator
- **Turquoise**: `#1de9b6` - Activity notifications
- **Pure Black**: `#0a0a0f` - Background
- **Cool Gray**: `#4a4a6a` - Inactive borders

## Customization

After sourcing the theme, you can override any settings in your `~/.tmux.conf`:

### Status Bar Position

```bash
set -g status-position top  # Move status bar to top
```

### Custom Status Right

```bash
set -g status-right "#[fg=#9c27b0] CPU #{cpu_percentage} #[fg=#00d9ff,bold] %H:%M "
```

### Adjust Status Length

```bash
set -g status-left-length 50
set -g status-right-length 150
```

### Border Style

```bash
# Make borders thicker (if your terminal supports it)
set -g pane-border-lines heavy
```

## Requirements

- tmux 3.0 or later
- Terminal with true color support
- Optional: JetBrainsMono Nerd Font for best appearance

## Compatibility

Works great with:
- Hyprland Electric Dreams
- Kitty Electric Dreams
- Vim/Neovim Electric Dreams
- VSCode Electric Dreams

## License

MIT
