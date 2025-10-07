# Electric Dreams for Neomutt

A vibrant neon-inspired color theme for Neomutt featuring electric cyan and hot magenta accents.

![Electric Dreams Theme](../../docs/assets/preview.png)

## Installation

### Quick Install

```bash
mkdir -p ~/.config/neomutt/themes
curl -o ~/.config/neomutt/themes/electric-dreams.muttrc \
  https://raw.githubusercontent.com/nylanalyn/electric-dreams-theme/main/ports/neomutt/electric-dreams.muttrc
echo "source ~/.config/neomutt/themes/electric-dreams.muttrc" >> ~/.config/neomutt/neomuttrc
```

### Manual Installation

1. Copy the theme file to your Neomutt config directory:
   ```bash
   mkdir -p ~/.config/neomutt/themes
   cp electric-dreams.muttrc ~/.config/neomutt/themes/
   ```

2. Add this line to your `~/.config/neomutt/neomuttrc` or `~/.neomuttrc`:
   ```muttrc
   source ~/.config/neomutt/themes/electric-dreams.muttrc
   ```

3. Restart Neomutt or reload configuration with `:source ~/.config/neomutt/neomuttrc`

## Color Scheme

The theme uses the Electric Dreams color palette:

| Element | Color | Hex |
|---------|-------|-----|
| New messages | Electric Cyan | `#00D9FF` |
| Important/flagged | Hot Magenta | `#FF006E` |
| Headers | Electric Cyan | `#00D9FF` |
| Quoted text | Light Purple | `#BB86FC` |
| Links/URLs | Electric Cyan | `#00D9FF` |
| Errors | Vivid Crimson | `#FF1744` |
| Success/Signed | Turquoise | `#1DE9B6` |
| Background | Pure Black | `#0A0A0F` |
| Text | Light Gray | `#E0E0E0` |

## Features

- **High contrast** for excellent readability
- **Color-coded message states**: new, read, replied, flagged, deleted
- **Syntax highlighting** for headers, URLs, email addresses
- **PGP/GPG signature colors** for security indicators
- **Sidebar support** with matching colors
- **Thread tree colors** using hot magenta
- **Quoted text levels** with distinct neon colors

## Customization

You can override specific colors by adding additional `color` commands after sourcing the theme:

```muttrc
source ~/.config/neomutt/themes/electric-dreams.muttrc

# Override the indicator color
color indicator color232 color213  # Use hot magenta instead of cyan
```

## Requirements

- Neomutt (or Mutt with color support)
- Terminal with 256-color support or true color (recommended)
- Works best with:
  - JetBrains Mono Nerd Font or similar monospace font
  - Matching terminal theme (e.g., Electric Dreams for Kitty)

## Recommended Neomutt Settings

For the best experience with Electric Dreams:

```muttrc
# Enable sidebar
set sidebar_visible = yes
set sidebar_width = 25
set sidebar_format = "%D%* %?N?%N/?%S"
set sidebar_new_mail_only = no

# Better threading
set sort = threads
set sort_aux = reverse-last-date-received

# Better index format
set index_format = "%4C %Z %{%b %d} %-15.15L (%?l?%4l&%4c?) %s"
```

## Compatibility

This theme uses 256-color codes that map to the Electric Dreams palette. It should work with:

- Neomutt (all versions)
- Mutt 1.5.12 and later
- Any terminal emulator with 256-color support

For true color terminals, colors are approximated using the nearest 256-color values.

## See Also

- [Main Theme Repository](https://github.com/nylanalyn/electric-dreams-theme)
- [Electric Dreams for Vim/Neovim](../vim/)
- [Electric Dreams for Kitty Terminal](../kitty/)
- [Electric Dreams for tmux](../tmux/)

## License

MIT License - See repository root for details

## Contributing

Found a bug or have a suggestion? Please open an issue on the [main repository](https://github.com/nylanalyn/electric-dreams-theme/issues).

---

Made with ⚡ and neon dreams
