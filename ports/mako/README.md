# Electric Dreams for mako

> Neon-styled Wayland notifications with cyan borders and magenta progress bars.

## Features

- 🟦 Semi-transparent background that floats above Hyprland blur
- 🌈 Border colors per urgency with accent overrides for popular apps
- 🕒 5s default timeout with infinite persistence for `high` urgency
- 🖼 Large icon support (64px) to match the theme's bold visuals

## Installation

```bash
mkdir -p ~/.config/mako
curl -o ~/.config/mako/config \
  https://raw.githubusercontent.com/nylanalyn/electric-dreams-theme/main/ports/mako/electric-dreams.conf
```

Log out/in or reload mako:

```bash
killall mako && mako &
```

> **Tip:** Add the command above to your Hyprland `exec-once` block to ensure mako restarts with the theme.

## Customization

- Adjust timeout per urgency: edit `default-timeout` or the `[urgency=*]` blocks
- Different font? Change the `font` line (e.g. `font=Iosevka Nerd Font 12`)
- Prefer rounded icons only? Set `max-icon-size=48`
- Want DND toggle? Pair with `swaync` or `scripts` triggered by keybinds

## Requirements

- mako notification daemon
- Wayland compositor (Hyprland, sway, river…)
- JetBrainsMono Nerd Font (optional, matches other Electric Dreams ports)

## License

[MIT](LICENSE)
