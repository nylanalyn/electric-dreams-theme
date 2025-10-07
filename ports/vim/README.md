# Electric Dreams for Vim

> A bold neon colorscheme featuring electric cyan, hot magenta, and vibrant purple on deep black backgrounds.

![Electric Dreams Theme](https://via.placeholder.com/800x400/0A0A0F/00D9FF?text=Electric+Dreams)

## Features

- **High contrast** design with dramatic color pops
- **True color** support (24-bit color)
- Support for **TreeSitter** syntax highlighting
- Support for **LSP** diagnostics
- Optimized for **Neovim** and **Vim 8+**
- Language-specific highlighting for:
  - JavaScript/TypeScript
  - Python
  - HTML/CSS
  - Markdown
  - And more...

## Installation

### Using [vim-plug](https://github.com/junegunn/vim-plug)

Add this to your `~/.vimrc` or `~/.config/nvim/init.vim`:

```vim
Plug 'nullveil/vim-electric-dreams'
```

Then run `:PlugInstall`

### Using [Vundle](https://github.com/VundleVim/Vundle.vim)

Add this to your `~/.vimrc`:

```vim
Plugin 'nullveil/vim-electric-dreams'
```

Then run `:PluginInstall`

### Using [Pathogen](https://github.com/tpope/vim-pathogen)

```bash
cd ~/.vim/bundle
git clone https://github.com/nullveil/vim-electric-dreams.git
```

### Using Vim 8's Native Package Manager

```bash
mkdir -p ~/.vim/pack/themes/start
cd ~/.vim/pack/themes/start
git clone https://github.com/nullveil/vim-electric-dreams.git
```

### Manual Installation

1. Download `colors/electric_dreams.vim`
2. Copy it to `~/.vim/colors/` (Vim) or `~/.config/nvim/colors/` (Neovim)

```bash
mkdir -p ~/.vim/colors
curl -o ~/.vim/colors/electric_dreams.vim https://raw.githubusercontent.com/nullveil/vim-electric-dreams/main/colors/electric_dreams.vim
```

## Activation

Add this to your `~/.vimrc` or `~/.config/nvim/init.vim`:

```vim
" Enable 24-bit true colors (required for best appearance)
if (has("termguicolors"))
  set termguicolors
endif

" Set the colorscheme
colorscheme electric_dreams
```

For Neovim users using Lua configuration (`~/.config/nvim/init.lua`):

```lua
-- Enable true colors
vim.opt.termguicolors = true

-- Set the colorscheme
vim.cmd([[colorscheme electric_dreams]])
```

## Color Palette

| Color Name | Hex Code | Usage |
|------------|----------|-------|
| Pure Black | `#0A0A0F` | Main background |
| Dark Navy | `#1A1A2E` | Floating elements |
| Light Lavender | `#D0D0E0` | Primary text |
| Electric Cyan | `#00D9FF` | Functions, active borders |
| Hot Magenta | `#FF006E` | Keywords, borders |
| Vivid Crimson | `#FF1744` | Errors |
| Vibrant Purple | `#9C27B0` | Constants, numbers |
| Turquoise | `#1DE9B6` | Strings, success |

[View full color palette →](https://github.com/nullveil/electric-dreams)

## Screenshots

*Coming soon*

## Configuration

The theme works out of the box, but you can customize your experience:

```vim
" Example: Make comments less italic if you prefer
hi Comment gui=NONE cterm=NONE
```

## Compatibility

- **Vim**: 8.0+
- **Neovim**: 0.5+
- **Terminal**: Any terminal with true color support
  - iTerm2
  - Alacritty
  - Kitty
  - WezTerm
  - Windows Terminal
  - And more...

## Related Projects

- [Electric Dreams](https://github.com/nullveil/electric-dreams) - The original theme repository
- More ports coming soon!

## Contributing

Found a bug or want to suggest an improvement? Open an issue or pull request!

## License

MIT License - see LICENSE file for details

## Credits

Created by [nullveil](https://github.com/nullveil)

Inspired by bold neon aesthetics and high-contrast design.
