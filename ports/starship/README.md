# Electric Dreams for Starship

> Prompt palette with cyan arrows, magenta accents, and a glowing time indicator.

## Features

- 💡 Custom palette with Electric Dreams colors
- 🕒 Time module on the right for quick glances
- 🌿 Directory + git status highlighted on a dark surface block
- ⚙️ Language module colors that match the rest of the stack

## Installation

```bash
mkdir -p ~/.config
curl -o ~/.config/starship.toml \
  https://raw.githubusercontent.com/nylanalyn/electric-dreams-theme/main/ports/starship/starship.toml
```

If you already have a `starship.toml`, merge the relevant sections instead of overwriting it.

Enable Starship in your shell (example for `zsh`):

```bash
echo 'eval "$(starship init zsh)"' >> ~/.zshrc
```

## Customization

- Change prompt symbol: edit `[character]`
- Prefer multiline prompts? Remove `line_break.disabled = true` and adjust format
- Hide modules: comment out any module block you do not need
- Add more languages: copy an existing module block and tweak the colors

## Requirements

- [Starship](https://starship.rs/) 1.14+
- Patched font such as JetBrainsMono Nerd Font for the glyphs
- POSIX shell or PowerShell initialization (see Starship docs)

## License

[MIT](LICENSE)
