# Electric Dreams for Firefox

> A bold neon browser theme featuring electric cyan, hot magenta, and vibrant purple on deep black backgrounds.

![Electric Dreams Theme](https://via.placeholder.com/800x400/0A0A0F/00D9FF?text=Electric+Dreams+Firefox)

## Features

- **Deep black** backgrounds (`#0A0A0F`)
- **Electric cyan** active tab indicators
- **Neon highlights** for focused elements
- **High contrast** for excellent readability
- **Dark mode** optimized
- **Minimal and clean** design
- Compatible with **Firefox** and **Firefox ESR**

## Preview

### Theme Elements

- **Toolbar**: Pure black with light lavender text
- **Active Tab**: Cyan underline indicator
- **Inactive Tabs**: Gray text for visual hierarchy
- **Address Bar**: Dark background with cyan focus border
- **Buttons**: Hover states with neon highlights
- **Popups/Menus**: Dark themed with cyan accents
- **Sidebar**: Matching dark theme with cyan highlights

## Installation

### From Firefox Add-ons (Recommended)

*Coming soon - Theme will be available on Firefox Add-ons store*

1. Visit the [Electric Dreams theme page](https://addons.mozilla.org/firefox/) (link pending)
2. Click **Add to Firefox**
3. Click **Install**
4. Theme applies automatically!

### Manual Installation

#### Temporary Installation (For Testing)

1. Download or clone this repository
2. Open Firefox and navigate to `about:debugging`
3. Click **This Firefox** (or **Load Temporary Add-on** in older versions)
4. Click **Load Temporary Add-on**
5. Navigate to the theme folder and select `manifest.json`
6. Theme is now active!

**Note**: Temporary installations are removed when Firefox is closed.

#### Permanent Installation (Development)

For permanent local installation, you'll need to:

1. Zip the theme folder:
   ```bash
   cd firefox-electric-dreams
   zip -r -FS ../electric-dreams.xpi * --exclude '*.git*'
   ```

2. Self-sign the extension (for Firefox Developer Edition or Nightly):
   - Use [web-ext](https://extensionworkshop.com/documentation/develop/getting-started-with-web-ext/)
   ```bash
   npm install -g web-ext
   web-ext sign --api-key=YOUR_KEY --api-secret=YOUR_SECRET
   ```

3. Install the signed `.xpi` file:
   - Open Firefox
   - Navigate to `about:addons`
   - Click the gear icon → **Install Add-on From File**
   - Select the `.xpi` file

### Quick Install via XPI (When Available)

1. Download `electric-dreams.xpi` from releases
2. Drag and drop into Firefox
3. Click **Add** when prompted

## Color Palette

### UI Colors

| Element | Color | Hex | Usage |
|---------|-------|-----|-------|
| **Toolbar** | Pure Black | `#0A0A0F` | Main toolbar background |
| **Toolbar Text** | Light Lavender | `#D0D0E0` | Text and icons |
| **Active Tab** | Pure Black | `#0A0A0F` | Active tab background |
| **Tab Indicator** | Electric Cyan | `#00D9FF` | Active tab line |
| **Inactive Tab Text** | Cool Gray | `#4A4A6A` | Inactive tabs |
| **Address Bar** | Dark Background | `#151520` | URL bar background |
| **Address Bar Focus** | Electric Cyan Border | `#00D9FF` | Focused state |
| **Button Hover** | Dark Navy | `#1A1A2E` | Button hover state |
| **Popup** | Dark Background | `#151520` | Menus and dropdowns |
| **Popup Highlight** | Cyan (30% opacity) | `#00D9FF33` | Selected items |
| **Sidebar** | Pure Black | `#0A0A0F` | Sidebar background |
| **Borders** | Cool Gray | `#4A4A6A` | Separators |

## Customization

Firefox themes can be customized further with CSS. Create a `userChrome.css` file for advanced customization.

### Custom CSS Location

**Windows**: `%APPDATA%\Mozilla\Firefox\Profiles\XXXXXXXX.default\chrome\userChrome.css`
**macOS**: `~/Library/Application Support/Firefox/Profiles/XXXXXXXX.default/chrome/userChrome.css`
**Linux**: `~/.mozilla/firefox/XXXXXXXX.default/chrome/userChrome.css`

### Example Customizations

#### Rounded Tabs
```css
@namespace url("http://www.mozilla.org/keymaster/gatekeeper/there.is.only.xul");

.tab-background {
  border-radius: 8px 8px 0 0 !important;
}
```

#### Thicker Active Tab Line
```css
.tab-line {
  height: 3px !important;
}
```

#### Custom Bookmark Toolbar
```css
#PersonalToolbar {
  background-color: #151520 !important;
  border-bottom: 1px solid #00D9FF !important;
}
```

### Enable userChrome.css

1. Navigate to `about:config` in Firefox
2. Search for `toolkit.legacyUserProfileCustomizations.stylesheets`
3. Set to `true`
4. Restart Firefox

## Companion Extensions

Enhance your Electric Dreams setup:

- **Dark Reader**: Force dark mode on all websites
- **Stylus**: Custom CSS for websites
- **Tree Style Tab**: Vertical tabs with custom styling
- **Simple Tab Groups**: Organize tabs with color coding

### Recommended Dark Reader Settings

To match Electric Dreams:
- **Brightness**: 90%
- **Contrast**: 105%
- **Sepia**: 0%
- **Background**: `#0A0A0F`
- **Text**: `#D0D0E0`
- **Links**: `#00D9FF`

## Browser Support

- **Firefox**: 60.0 or later
- **Firefox ESR**: 60.0 or later
- **Firefox Developer Edition**: All versions
- **Firefox Nightly**: All versions

**Note**: Chrome/Edge themes use a different format. See the Chrome port (coming soon).

## Building from Source

### Prerequisites

```bash
# Install web-ext
npm install -g web-ext
```

### Development Mode

```bash
# Clone the repository
git clone https://github.com/nylanalyn/electric-dreams-theme
cd electric-dreams-theme

# Run in development mode
web-ext run
```

This opens a temporary Firefox instance with the theme loaded.

### Building XPI

```bash
# Build the extension
web-ext build

# Output: web-ext-artifacts/electric_dreams-1.0.0.zip
# Rename to .xpi
mv web-ext-artifacts/electric_dreams-1.0.0.zip electric-dreams.xpi
```

### Linting

```bash
# Check for issues
web-ext lint
```

## Publishing to AMO (Add-ons.mozilla.org)

To submit this theme to Firefox Add-ons:

1. Create an account at https://addons.mozilla.org
2. Submit your add-on: https://addons.mozilla.org/developers/addon/submit/
3. Upload the `.xpi` file or source
4. Fill in the listing information
5. Wait for review (usually 1-3 days for themes)

## Troubleshooting

### Theme Not Applying

1. Check Firefox version (must be 60+)
2. Try restarting Firefox
3. Disable conflicting themes in `about:addons`
4. Clear Firefox cache

### Colors Look Different

1. Check display color profile
2. Ensure Firefox Hardware Acceleration is enabled
3. Update graphics drivers
4. Try on different monitor

### Temporary Install Disappeared

Temporary installations are removed when Firefox closes. Use permanent installation methods for daily use.

## Screenshots

*Coming soon - Screenshots of the theme in action*

## Related Projects

- [Electric Dreams](https://github.com/nylanalyn/electric-dreams-theme) - Main theme repository
- [Electric Dreams for Vim](https://github.com/nylanalyn/electric-dreams-theme)
- [Electric Dreams for VSCode](https://github.com/nylanalyn/electric-dreams-theme)
- [Electric Dreams for Hyprland](https://github.com/nylanalyn/electric-dreams-theme)
- [Electric Dreams for Kitty](https://github.com/nylanalyn/electric-dreams-theme)

## Contributing

Found a bug or want to suggest improvements?

1. Open an issue: https://github.com/nylanalyn/electric-dreams-theme/issues
2. Submit a pull request with:
   - Description of changes
   - Screenshots if UI changes
   - Test on multiple Firefox versions

## Resources

- [Firefox Theme Documentation](https://developer.mozilla.org/en-US/docs/Mozilla/Add-ons/WebExtensions/manifest.json/theme)
- [web-ext Documentation](https://extensionworkshop.com/documentation/develop/web-ext-command-reference/)
- [Firefox Color](https://color.firefox.com/) - Theme preview tool

## Changelog

### 1.0.0 (2025-10-07)
- Initial release
- Complete dark theme with neon accents
- Electric cyan active tab indicators
- Full UI coverage (toolbar, tabs, address bar, menus)

## License

MIT License - see [LICENSE](LICENSE) file for details

## Credits

**Created by**: [nylanalyn](https://github.com/nylanalyn)

**Inspired by**: Neon aesthetics, cyberpunk design, and dark browser themes

---

<div align="center">

### ⭐ Star this repo if you love Electric Dreams! ⭐

[Report Bug](https://github.com/nylanalyn/electric-dreams-theme/issues) ·
[Request Feature](https://github.com/nylanalyn/electric-dreams-theme/issues) ·
[View Website](https://electric-dreams-theme.com)

</div>
