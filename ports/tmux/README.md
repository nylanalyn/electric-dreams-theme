# Electric Dreams for tmux

A neon-inspired tmux theme featuring electric cyan and hot magenta accents.

## Features

- 🎨 Vibrant neon color palette
- ✨ Electric cyan active pane borders
- 🌈 Magenta active window highlights
- 🔥 Color-coded status bar modules
- 💫 Clean, modern design

## Installation

### Via TPM (Tmux Plugin Manager) - Recommended

1. Add to your `~/.tmux.conf`:

```bash
set -g @plugin 'nylanalyn/electric-dreams-theme'
```

2. Install the plugin:
   - Press `prefix + I` (capital i) to fetch and source the plugin
   - Or run: `~/.tmux/plugins/tpm/bin/install_plugins`

3. Reload tmux configuration:

```bash
tmux source ~/.tmux.conf
```

### Manual Installation

1. Clone this repository:

```bash
git clone https://github.com/nylanalyn/electric-dreams-theme ~/.config/tmux/themes/electric-dreams
```

2. Source the theme in your `~/.tmux.conf`:

```bash
run-shell ~/.config/tmux/themes/electric-dreams/electric-dreams.tmux
```

Or for the alternative format:

```bash
source-file ~/.config/tmux/themes/electric-dreams/electric-dreams.tmuxtheme
```

3. Reload tmux:

```bash
tmux source ~/.tmux.conf
```

### Quick Install (Direct)

```bash
# Download theme
curl -o ~/.tmux-electric-dreams.conf \
  https://raw.githubusercontent.com/nylanalyn/electric-dreams-theme/main/ports/tmux/electric-dreams.tmuxtheme

# Add to ~/.tmux.conf
echo "source-file ~/.tmux-electric-dreams.conf" >> ~/.tmux.conf

# Reload
tmux source ~/.tmux.conf
```

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
- Optional: [TPM](https://github.com/tmux-plugins/tpm) for easy installation

## Compatibility

Works great with:
- Hyprland Electric Dreams
- Kitty Electric Dreams
- Vim/Neovim Electric Dreams
- VSCode Electric Dreams

## License

MIT
