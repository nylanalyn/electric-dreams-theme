# Electric Dreams Theme

> A vibrant neon-inspired color theme featuring electric cyan and hot magenta accents

**[View Theme Website](https://nylan.cat/electric-dreams-theme/)** | **[Color Palette](#color-palette)**

Electric Dreams is a comprehensive theme collection bringing neon aesthetics to your development environment. From your window manager to your terminal, editor, and browser - create a cohesive, eye-catching setup.

## 🎨 Color Palette

| Color | Hex | Usage |
|-------|-----|-------|
| **Electric Cyan** | `#00D9FF` | Primary accent, active borders, highlights |
| **Hot Magenta** | `#FF006E` | Secondary accent, active windows, selection |
| **Deep Purple** | `#9C27B0` | Tertiary accent, strings, keywords |
| **Turquoise** | `#1DE9B6` | Success, positive states |
| **Pink** | `#E91E63` | Warnings, special elements |
| **Vivid Crimson** | `#FF1744` | Errors, critical states |
| **Light Purple** | `#BB86FC` | Comments, secondary text |
| **Cool Gray** | `#4A4A6A` | Inactive borders, muted elements |
| **Pure Black** | `#0A0A0F` | Background |
| **Light Gray** | `#E0E0E0` | Primary text |

## 📦 Available Ports

### Window Manager & Desktop
- **[Hyprland](ports/hyprland/)** - Window manager theme with glowing borders and smooth animations
- **[Hyprlock](ports/hyprland/)** - Matching lock screen with neon rings
- **[Waybar](ports/waybar/)** - Status bar with color-coded modules

### Terminals & Multiplexers
- **[Kitty](ports/kitty/)** - GPU-accelerated terminal emulator theme
- **[tmux](ports/tmux/)** - Terminal multiplexer with TPM support

### Editors
- **[Vim/Neovim](ports/vim/)** - Syntax highlighting and UI theme
- **[VSCode/VSCodium](ports/vscode/)** - Complete editor theme

### Browser
- **[Firefox](ports/firefox/)** - Browser theme with neon accents

## 🚀 Quick Start

### Hyprland
```bash
mkdir -p ~/.config/hypr/themes
curl -o ~/.config/hypr/themes/electric-dreams.conf \
  https://raw.githubusercontent.com/nylanalyn/electric-dreams-theme/main/ports/hyprland/hyprland.conf
echo "source = ~/.config/hypr/themes/electric-dreams.conf" >> ~/.config/hypr/hyprland.conf
```

### Kitty Terminal
```bash
mkdir -p ~/.config/kitty/themes
curl -o ~/.config/kitty/themes/electric-dreams.conf \
  https://raw.githubusercontent.com/nylanalyn/electric-dreams-theme/main/ports/kitty/electric-dreams.conf
echo "include themes/electric-dreams.conf" >> ~/.config/kitty/kitty.conf
```

### tmux (via TPM)
Add to `~/.tmux.conf`:
```bash
set -g @plugin 'nylanalyn/electric-dreams-theme'
```
Then press `prefix + I` to install.

### Vim/Neovim
Using vim-plug, add to your config:
```vim
Plug 'nylanalyn/electric-dreams-theme'
```
Then:
```vim
colorscheme electric_dreams
```

### Waybar
```bash
curl -o ~/.config/waybar/style.css \
  https://raw.githubusercontent.com/nylanalyn/electric-dreams-theme/main/ports/waybar/style.css
killall waybar && waybar &
```

## 📖 Documentation

Visit the [theme website](https://nylan.cat/electric-dreams-theme/) for:
- Detailed installation instructions for each port
- Screenshots and previews
- Customization guides
- Troubleshooting tips

Each port also has its own README in the `ports/` directory.

## 🎯 Features

- **Cohesive Design**: All ports share the same color palette
- **High Contrast**: Excellent readability with vibrant accents
- **True Color Support**: Designed for modern terminals and editors
- **Easy Installation**: Simple setup for each component
- **Plugin Manager Support**: TPM, vim-plug, Vundle integration
- **Active Maintenance**: Regular updates and improvements

## 🔧 Requirements

- Terminal with true color (24-bit) support
- Modern applications (see individual port requirements)
- Optional: JetBrains Mono Nerd Font for best appearance

## 📂 Repository Structure

```
electric-dreams-theme/
├── ports/               # Theme ports for each application
│   ├── firefox/
│   ├── hyprland/
│   ├── kitty/
│   ├── tmux/
│   ├── vim/
│   ├── vscode/
│   └── waybar/
├── docs/            # Theme documentation website
├── electric-dreams.tmux  # TPM entry point for tmux
└── README.md           # This file
```

## 🤝 Contributing

Contributions are welcome! If you'd like to:
- Report a bug
- Request a new port
- Submit improvements
- Share screenshots

Please open an issue or pull request.

## 📜 License

Each port may have its own license. Check individual `ports/*/LICENSE` files.

## 🌟 Showcase

Share your Electric Dreams setup! Tag `#ElectricDreamsTheme` or open a discussion to show off your configuration.

## 🔗 Links

- **Website**: https://nylan.cat/electric-dreams-theme/
- **Repository**: https://github.com/nylanalyn/electric-dreams-theme

---

Made with ⚡ and neon dreams
