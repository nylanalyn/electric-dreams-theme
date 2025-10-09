# Electric Dreams for Visual Studio Code

> A bold neon theme featuring electric cyan, hot magenta, and vibrant purple on deep black backgrounds.

![Electric Dreams Theme](https://via.placeholder.com/800x400/0A0A0F/00D9FF?text=Electric+Dreams+VSCode)

## Features

- **High contrast** neon colors on deep black background
- **Electric cyan** accents for functions, classes, and active elements
- **Hot magenta** keywords and statements
- **Vibrant purple** constants and numbers
- **Turquoise** strings for excellent readability
- Complete **UI theming** for all VSCode elements
- **Git integration** colors
- **Terminal** theme included
- Optimized for **true color** displays

## Installation

### From VSCode Marketplace (Recommended)

1. Open **Extensions** sidebar in VSCode (`Ctrl+Shift+X` / `Cmd+Shift+X`)
2. Search for **"Electric Dreams"**
3. Click **Install**
4. Click **Set Color Theme**

Or install from command palette:
1. Press `Ctrl+Shift+P` / `Cmd+Shift+P`
2. Type `theme`
3. Select **Preferences: Color Theme**
4. Choose **Electric Dreams**

### Manual Installation

#### VSCode

1. Copy the extension folder to:
   - **Windows**: `%USERPROFILE%\.vscode\extensions`
   - **macOS/Linux**: `~/.vscode/extensions`

2. Reload VSCode

#### VSCodium

1. Copy the extension folder to:
   - **Windows**: `%USERPROFILE%\.vscode-oss\extensions`
   - **macOS/Linux**: `~/.vscode-oss/extensions`

2. Reload VSCodium

### From Source

```bash
# Clone the repository
git clone https://github.com/nylanalyn/electric-dreams-theme
cd electric-dreams-theme

# Copy to extensions directory
cp -r . ~/.vscode/extensions/electric-dreams

# Or create a symlink for development
ln -s $(pwd) ~/.vscode/extensions/electric-dreams
```

## Activation

1. Press `Ctrl+Shift+P` / `Cmd+Shift+P`
2. Type `Color Theme`
3. Select **Electric Dreams**

Or use keyboard shortcut: `Ctrl+K Ctrl+T` / `Cmd+K Cmd+T`

## Color Palette

### Syntax Colors

| Element | Color | Hex | Usage |
|---------|-------|-----|-------|
| **Strings** | Turquoise | `#1DE9B6` | String literals |
| **Numbers** | Vibrant Purple | `#9C27B0` | Numbers, constants |
| **Keywords** | Hot Magenta | `#FF006E` | if, for, while, return |
| **Functions** | Electric Cyan | `#00D9FF` | Function names, calls |
| **Types/Classes** | Electric Cyan | `#00D9FF` | Classes, interfaces, types |
| **Comments** | Cool Gray | `#4A4A6A` | All comments |
| **Operators** | Hot Magenta | `#FF006E` | +, -, =, etc. |
| **Variables** | Light Lavender | `#D0D0E0` | Variable names |
| **Errors** | Vivid Crimson | `#FF1744` | Error highlighting |

### UI Colors

| Element | Color | Hex |
|---------|-------|-----|
| **Background** | Pure Black | `#0A0A0F` |
| **Sidebar** | Pure Black | `#0A0A0F` |
| **Editor Background** | Pure Black | `#0A0A0F` |
| **Active Border** | Electric Cyan | `#00D9FF` |
| **Selection** | Electric Cyan (30% opacity) | `#00D9FF33` |
| **Cursor** | Electric Cyan | `#00D9FF` |
| **Button Background** | Electric Cyan | `#00D9FF` |
| **Badge Background** | Hot Magenta | `#FF006E` |
| **Git Added** | Turquoise | `#1DE9B6` |
| **Git Modified** | Hot Magenta | `#FF006E` |
| **Git Deleted** | Vivid Crimson | `#FF1744` |

### Terminal Colors

The integrated terminal uses the full Electric Dreams palette:
- **Black/Gray**: `#0A0A0F` / `#4A4A6A`
- **Red**: `#FF1744` / `#C41E3A`
- **Green**: `#1DE9B6` / `#00BFA5`
- **Yellow**: `#FF006E` / `#E91E63`
- **Blue**: `#9C27B0` / `#BB86FC`
- **Magenta**: `#FF006E` / `#D81B60`
- **Cyan**: `#00D9FF` / `#1DE9B6`
- **White**: `#D0D0E0` / `#FFFFFF`

## Language Support

The theme is optimized for all major languages:

- **Web**: HTML, CSS, JavaScript, TypeScript, JSX, TSX
- **Backend**: Python, Java, C#, Go, Rust, PHP
- **Markup**: Markdown, JSON, YAML, TOML, XML
- **Shell**: Bash, PowerShell, Zsh
- **Systems**: C, C++, Rust
- **Functional**: Haskell, Elixir, F#
- **And more...**

## Customization

You can customize specific colors by adding overrides to your `settings.json`:

### Example: Change Comment Color

```json
{
  "editor.tokenColorCustomizations": {
    "[Electric Dreams]": {
      "comments": "#6B5B95"
    }
  }
}
```

### Example: Adjust UI Colors

```json
{
  "workbench.colorCustomizations": {
    "[Electric Dreams]": {
      "editor.background": "#0F0F14",
      "activityBar.background": "#0F0F14"
    }
  }
}
```

### Example: Semantic Highlighting

For better syntax highlighting, enable semantic highlighting:

```json
{
  "editor.semanticHighlighting.enabled": true
}
```

## Recommended Settings

For the best Electric Dreams experience:

```json
{
  // Font
  "editor.fontFamily": "JetBrains Mono, 'Courier New', monospace",
  "editor.fontSize": 13,
  "editor.fontLigatures": true,

  // Cursor
  "editor.cursorStyle": "line",
  "editor.cursorBlinking": "smooth",
  "editor.cursorSmoothCaretAnimation": "on",

  // Line height and spacing
  "editor.lineHeight": 1.6,
  "editor.letterSpacing": 0.5,

  // Bracket pairs
  "editor.bracketPairColorization.enabled": true,
  "editor.guides.bracketPairs": "active",

  // Minimap
  "editor.minimap.enabled": true,
  "editor.minimap.renderCharacters": false,

  // Indent guides
  "editor.renderIndentGuides": true,
  "editor.guides.indentation": true,

  // Smooth scrolling
  "editor.smoothScrolling": true,

  // Semantic highlighting
  "editor.semanticHighlighting.enabled": true
}
```

### Recommended Font

**JetBrains Mono** is highly recommended for this theme:
- Download: https://www.jetbrains.com/lp/mono/
- Features: Ligatures, excellent readability, designed for code

Install via:
```bash
# Arch/Manjaro
sudo pacman -S ttf-jetbrains-mono

# Ubuntu/Debian
sudo apt install fonts-jetbrains-mono

# macOS
brew tap homebrew/cask-fonts
brew install --cask font-jetbrains-mono
```

## Screenshot Gallery

*Coming soon - Screenshots of different languages and UI elements*

## Companion Extensions

Enhance your Electric Dreams setup with these extensions:

- **Bracket Pair Colorizer 2**: Color matching brackets
- **Indent Rainbow**: Colorize indentation levels
- **GitLens**: Enhanced Git integration
- **Material Icon Theme**: Matching icon theme
- **Better Comments**: Highlight different comment types

## Troubleshooting

### Theme Not Appearing

1. Restart VSCode after installation
2. Check the extension is enabled: Extensions sidebar → Electric Dreams
3. Manually select theme: `Ctrl+K Ctrl+T`

### Colors Look Dull

1. Ensure true color support in your terminal
2. Try disabling other color customizations in `settings.json`
3. Update to the latest VSCode version

### Syntax Highlighting Issues

1. Enable semantic highlighting:
   ```json
   {
     "editor.semanticHighlighting.enabled": true
   }
   ```
2. Check for conflicting extensions
3. Reload the window: `Ctrl+Shift+P` → "Developer: Reload Window"

## Publishing to Marketplace

To publish this theme to the VSCode Marketplace:

```bash
# Install vsce (VSCode Extension Manager)
npm install -g @vscode/vsce

# Package the extension
vsce package

# Login to publisher account
vsce login nylanalyn

# Publish
vsce publish
```

## Development

### Local Development

1. Clone the repository
2. Open in VSCode
3. Press `F5` to open Extension Development Host
4. Test changes in the new window

### Building

```bash
# Install dependencies
npm install

# Package extension
vsce package
```

## Related Projects

- [Electric Dreams](https://github.com/nylanalyn/electric-dreams-theme) - Main theme repository
- [Electric Dreams for Vim](https://github.com/nylanalyn/electric-dreams-theme)
- [Electric Dreams for Hyprland](https://github.com/nylanalyn/electric-dreams-theme)
- [Electric Dreams for Kitty](https://github.com/nylanalyn/electric-dreams-theme)

## Contributing

Found a bug or want to suggest an improvement?

1. Check existing issues: https://github.com/nylanalyn/electric-dreams-theme/issues
2. Create a new issue with:
   - VSCode version
   - Language/file type
   - Screenshot if possible
3. Or submit a pull request!

## Changelog

### 1.0.0 (2025-10-07)
- Initial release
- Complete syntax highlighting for major languages
- Full UI theme coverage
- Integrated terminal colors
- Git decoration colors

## License

MIT License - see [LICENSE](LICENSE) file for details

## Credits

**Created by**: [nylan](https://github.com/nylanalyn)

**Inspired by**: Neon aesthetics, cyberpunk design, and high-contrast themes

**Special thanks** to the VSCode theme community for inspiration and tools.

---

<div align="center">

### ⭐ Star this repo if you love Electric Dreams! ⭐

[Report Bug](https://github.com/nylanalyn/electric-dreams-theme/issues) ·
[Request Feature](https://github.com/nylanalyn/electric-dreams-theme/issues) ·
[View Website](https://nylan.cat/electric-dreams-theme/)

</div>
