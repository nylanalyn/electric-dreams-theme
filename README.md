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
- **[Alacritty](ports/alacritty/)** - Lightweight GPU terminal palette
- **[WezTerm](ports/wezterm/)** - Cross-platform terminal with neon tabs
- **[tmux](ports/tmux/)** - Terminal multiplexer theme with manual install instructions
- **[CAVA](ports/cava/)** - Audio visualizer with neon gradient

### Launchers & Notifications
- **[Rofi](ports/rofi/)** - Application launcher with transparent glow
- **[Mako](ports/mako/)** - Wayland notifications with cyan borders

### Editors
- **[Vim/Neovim](ports/vim/)** - Syntax highlighting and UI theme
- **[VSCode/VSCodium](ports/vscode/)** - Complete editor theme

### Email
- **[Neomutt](ports/neomutt/)** - Terminal-based email client theme

### Browser
- **[Firefox](ports/firefox/)** - Browser theme with neon accents

### Shell & UI
- **[Starship](ports/starship/)** - Prompt palette with cyan arrows
- **[GTK](ports/gtk/)** - Desktop CSS overrides for GTK apps

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

### tmux
```bash
mkdir -p ~/.config/tmux/themes
curl -o ~/.config/tmux/themes/electric-dreams.conf \
  https://raw.githubusercontent.com/nylanalyn/electric-dreams-theme/main/ports/tmux/electric-dreams.conf
echo "source-file ~/.config/tmux/themes/electric-dreams.conf" >> ~/.tmux.conf
tmux source-file ~/.tmux.conf
```

### Rofi Launcher
```bash
mkdir -p ~/.config/rofi/themes
curl -o ~/.config/rofi/themes/electric-dreams.rasi \
  https://raw.githubusercontent.com/nylanalyn/electric-dreams-theme/main/ports/rofi/electric-dreams.rasi
rofi -show drun -theme ~/.config/rofi/themes/electric-dreams.rasi
```

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
- **Plugin Manager Support**: vim-plug, Vundle integration and clear tmux setup steps
- **Active Maintenance**: Regular updates and improvements

## 🔧 Requirements

- Terminal with true color (24-bit) support
- Modern applications (see individual port requirements)
- Optional: JetBrains Mono Nerd Font for best appearance

## 📂 Repository Structure

```
electric-dreams-theme/
├── ports/               # Theme ports for each application
│   ├── cava/
│   ├── alacritty/
│   ├── firefox/
│   ├── hyprland/
│   ├── kitty/
│   ├── mako/
│   ├── neomutt/
│   ├── rofi/
│   ├── starship/
│   ├── tmux/
│   ├── vim/
│   ├── vscode/
│   ├── wezterm/
│   └── waybar/
├── docs/            # Theme documentation website
├── GITHUB_SETUP.md  # GitHub publishing guide
├── SETUP_COMPLETE.md  # Launch checklist
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
