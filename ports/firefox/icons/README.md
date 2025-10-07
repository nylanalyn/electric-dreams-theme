# Icons

To complete this theme, you'll need to add icon images:

- `icon-48.png` - 48x48px icon for the add-ons manager
- `icon-96.png` - 96x96px icon for high-DPI displays

## Recommended Icon Design

Create simple icons with the Electric Dreams color scheme:

**Design Ideas:**
1. **Lightning Bolt**: Electric cyan lightning bolt on pure black background
2. **Neon Circle**: Gradient circle with cyan to magenta gradient
3. **Abstract Wave**: Neon wave pattern in theme colors
4. **Electric "E"**: Stylized letter E with neon glow effect

**Colors to use:**
- Background: `#0A0A0F` (pure black)
- Primary: `#00D9FF` (electric cyan)
- Accent: `#FF006E` (hot magenta)
- Glow: `#1DE9B6` (turquoise)

## Creating Icons

### Using ImageMagick (CLI):

```bash
# Create a simple gradient circle icon
convert -size 48x48 xc:'#0A0A0F' \
  -fill '#00D9FF' -draw 'circle 24,24 24,4' \
  icon-48.png

convert -size 96x96 xc:'#0A0A0F' \
  -fill '#00D9FF' -draw 'circle 48,48 48,8' \
  icon-96.png
```

### Using GIMP:
1. Create new image: 48x48 or 96x96
2. Fill with `#0A0A0F`
3. Add shapes/text with Electric Dreams colors
4. Export as PNG

### Using Inkscape:
1. Create new document: 48x48 or 96x96
2. Design icon with theme colors
3. Export as PNG

## Online Icon Generators

- https://icon.kitchen/
- https://www.favicon-generator.org/
- https://realfavicongenerator.net/

Set the background to `#0A0A0F` and use `#00D9FF` for the main color.
