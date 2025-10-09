# Electric Dreams for Kitty Terminal

> A bold neon theme featuring electric cyan, hot magenta, and vibrant purple on deep black backgrounds.

![Electric Dreams Theme](https://via.placeholder.com/800x400/0A0A0F/00D9FF?text=Electric+Dreams+Kitty)

## Features

- **High contrast** neon colors on deep black background
- **Electric cyan** cursor and active elements
- **Hot magenta** and **vibrant purple** accents
- **True color** (24-bit) support
- Tab bar with **cyan active tabs**
- Window borders with **neon colors**
- Optimized for **JetBrainsMono Nerd Font**
- Complete **16-color palette** + extended colors
- Optional **background blur** and **opacity** settings

## Preview

### Color Scheme
- **Background**: Pure black (`#0A0A0F`)
- **Foreground**: Light lavender (`#D0D0E0`)
- **Cursor**: Electric cyan (`#00D9FF`)
- **Selection**: Cyan background
- **Active Tab**: Cyan background with black text
- **Active Border**: Electric cyan
- **URLs**: Cyan with underline on hover

## Installation

### Quick Install

1. Create themes directory if it doesn't exist:
```bash
mkdir -p ~/.config/kitty/themes
```

2. Download the theme:
```bash
curl -o ~/.config/kitty/themes/electric-dreams.conf \
  https://raw.githubusercontent.com/nylanalyn/electric-dreams-theme/main/ports/kitty/electric-dreams.conf
```

3. Include it in your `~/.config/kitty/kitty.conf`:
```conf
include themes/electric-dreams.conf
```

4. Reload Kitty configuration:
   - Press `Ctrl+Shift+F5`
   - Or restart Kitty

### Manual Install

1. Copy `electric-dreams.conf` to `~/.config/kitty/themes/`
2. Add `include themes/electric-dreams.conf` to your `kitty.conf`
3. Reload the config

### Using Kitty Themes Kitten

```bash
# Clone the kitty themes repo
git clone --depth 1 https://github.com/dexpota/kitty-themes.git ~/.config/kitty/kitty-themes

# Copy Electric Dreams theme
cp electric-dreams.conf ~/.config/kitty/kitty-themes/themes/

# Apply with the themes kitten
kitty +kitten themes --reload-in=all Electric Dreams
```

## Recommended Settings

For the complete Electric Dreams experience, add these settings to your `kitty.conf`:

### Font Configuration
```conf
font_family      JetBrainsMono Nerd Font
bold_font        JetBrainsMono Nerd Font Bold
italic_font      JetBrainsMono Nerd Font Italic
bold_italic_font JetBrainsMono Nerd Font Bold Italic
font_size        11.0
```

Install the font:
```bash
# Arch/Manjaro
sudo pacman -S ttf-jetbrains-mono-nerd

# Ubuntu/Debian
sudo apt install fonts-jetbrains-mono
```

### Window Style
```conf
# Padding and borders
window_padding_width  8
window_border_width   2.0
draw_minimal_borders  yes

# Transparency and blur (optional - for modern look)
background_opacity    0.95
background_blur       32
```

### Tab Bar Style
```conf
tab_bar_edge          top
tab_bar_style         powerline
tab_powerline_style   slanted
tab_title_template    "{index}: {title}"
```

### Cursor Style
```conf
cursor_shape          beam
cursor_beam_thickness 2.0
cursor_blink_interval 0
```

### Performance
```conf
repaint_delay    10
input_delay      3
sync_to_monitor  yes
```

## Color Palette Reference

### ANSI Colors (16 Base Colors)

| Name | Normal | Bright | Usage |
|------|--------|--------|-------|
| **Black** | `#0A0A0F` | `#4A4A6A` | Background, shadows |
| **Red** | `#FF1744` | `#C41E3A` | Errors, alerts |
| **Green** | `#1DE9B6` | `#00BFA5` | Success, strings |
| **Yellow** | `#FF006E` | `#E91E63` | Warnings, keywords |
| **Blue** | `#9C27B0` | `#BB86FC` | Functions, constants |
| **Magenta** | `#FF006E` | `#D81B60` | Statements, variables |
| **Cyan** | `#00D9FF` | `#1DE9B6` | Types, links |
| **White** | `#D0D0E0` | `#FFFFFF` | Text, highlights |

### UI Colors

| Element | Color | Hex |
|---------|-------|-----|
| Foreground | Light Lavender | `#D0D0E0` |
| Background | Pure Black | `#0A0A0F` |
| Cursor | Electric Cyan | `#00D9FF` |
| Selection BG | Electric Cyan | `#00D9FF` |
| Selection FG | Pure Black | `#0A0A0F` |
| URL | Electric Cyan | `#00D9FF` |
| Active Border | Electric Cyan | `#00D9FF` |
| Inactive Border | Cool Gray | `#4A4A6A` |
| Active Tab BG | Electric Cyan | `#00D9FF` |
| Active Tab FG | Pure Black | `#0A0A0F` |
| Inactive Tab BG | Dark Background | `#151520` |
| Inactive Tab FG | Light Lavender | `#D0D0E0` |

### Extended Colors

The theme includes extended 256-color palette entries for better terminal application support:
- **color236-240**: Dark background variations
- **color160**: Red accents
- **color198**: Magenta accents
- **color51**: Cyan accents
- **color141**: Violet accents
- **color212**: Pink accents

## Customization

### Adjust Background Opacity

For a more subtle background:
```conf
background_opacity 0.90
```

For fully opaque (no transparency):
```conf
background_opacity 1.0
```

### Change Cursor Style

Block cursor:
```conf
cursor_shape block
```

Underline cursor:
```conf
cursor_shape underline
```

### Modify Window Padding

More padding for spacious feel:
```conf
window_padding_width 12
```

Minimal padding:
```conf
window_padding_width 4
```

### Custom Tab Bar Position

Bottom tab bar:
```conf
tab_bar_edge bottom
```

### Alternative Tab Styles

```conf
# Fade style
tab_bar_style fade

# Separator style
tab_bar_style separator
tab_separator " ┇ "

# Hidden style
tab_bar_style hidden
```

## Tips & Tricks

### Application-Specific Colors

Some terminal applications (like `ls`, `bat`, `delta`) can be configured to match:

**For `ls` (using `LS_COLORS`):**
Add to your shell config:
```bash
export LS_COLORS="di=38;2;0;217;255:fi=38;2;208;208;224:ln=38;2;255;0;110:ex=38;2;29;233;182"
```

**For `bat` syntax highlighting:**
```bash
bat --theme=ansi
```

**For `delta` (git diff):**
```gitconfig
[delta]
    syntax-theme = ansi
```

### Test Your Colors

Run this in Kitty to see all colors:
```bash
curl -s https://gist.githubusercontent.com/HaleTom/89ffe32783f89f403bba96bd7bcd1263/raw/ | bash
```

### Combine with Tmux

For best results with tmux, ensure true color support:
```tmux
# In ~/.tmux.conf
set -g default-terminal "tmux-256color"
set -ga terminal-overrides ",*256col*:Tc"
```

## Troubleshooting

### Colors Look Wrong

Make sure Kitty is using true colors:
```bash
# Check terminal info
echo $TERM
# Should show: xterm-kitty

# Test true colors
printf "\x1b[38;2;0;217;255mTRUECOLOR\x1b[0m\n"
# Should display cyan text
```

### Theme Not Loading

1. Check the include path in `kitty.conf`
2. Make sure the theme file exists:
   ```bash
   ls ~/.config/kitty/themes/electric-dreams.conf
   ```
3. Check for syntax errors:
   ```bash
   kitty --debug-config
   ```

### Font Not Found

Install JetBrainsMono Nerd Font or change to an available font:
```conf
font_family monospace
```

List available fonts:
```bash
kitty +list-fonts
```

### Background Blur Not Working

Background blur requires:
- A compositor (like Picom on X11)
- Or a window manager with blur support (like Hyprland on Wayland)

Without a compositor, remove or comment out:
```conf
# background_blur 32
```

## Compatibility

- **Kitty**: 0.26.0 or later (recommended 0.30.0+)
- **OS**: Linux, macOS, BSD
- **Display Server**: X11, Wayland
- **Color Support**: True color (24-bit)

## Related Projects

- [Electric Dreams](https://github.com/nylanalyn/electric-dreams-theme) - Main theme repository
- [Electric Dreams for Vim](https://github.com/nylanalyn/electric-dreams-theme)
- [Electric Dreams for Hyprland](https://github.com/nylanalyn/electric-dreams-theme)

## Screenshots

*Coming soon*

## Contributing

Found an issue or want to suggest improvements? Open an issue or pull request!

## License

MIT License - see LICENSE file for details

## Credits

Created by [nylan](https://github.com/nylanalyn)

Inspired by neon aesthetics and cyberpunk design.
