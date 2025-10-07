# GitHub Setup Guide

Follow these steps to publish your Electric Dreams theme on GitHub with GitHub Pages.

## Step 1: Create the Repository

1. Go to https://github.com/new
2. Set repository name: `electric-dreams-theme`
3. Set description: `A vibrant neon-inspired color theme for your development environment`
4. Choose **Public** (required for free GitHub Pages)
5. **DO NOT** initialize with README, .gitignore, or license (we already have these)
6. Click **Create repository**

## Step 2: Initialize and Push from Your Local Repository

From your theme directory (`/home/nullveil/CODE/theme`), run:

```bash
cd /home/nullveil/CODE/theme

# Initialize git repository
git init

# Add all files
git add .

# Create initial commit
git commit -m "Initial commit: Electric Dreams theme with multiple ports"

# Add remote (replace nylanalyn with your username if different)
git remote add origin https://github.com/nylanalyn/electric-dreams-theme.git

# Push to GitHub
git branch -M main
git push -u origin main
```

## Step 3: Enable GitHub Pages

1. Go to your repository: https://github.com/nylanalyn/electric-dreams-theme
2. Click **Settings** (top right)
3. Scroll down and click **Pages** in the left sidebar
4. Under **Source**, select:
   - Branch: `main`
   - Folder: `/website`
5. Click **Save**
6. Wait 1-2 minutes for GitHub to build your site

Your site will be available at:
**https://nylanalyn.github.io/electric-dreams-theme/**

## Step 4: Verify Everything Works

Test these URLs to make sure they work:

1. **Website**: https://nylanalyn.github.io/electric-dreams-theme/
2. **Raw theme file**: https://raw.githubusercontent.com/nylanalyn/electric-dreams-theme/main/ports/tmux/electric-dreams.tmuxtheme
3. **TPM plugin**: Test by adding to your `~/.tmux.conf`:
   ```bash
   set -g @plugin 'nylanalyn/electric-dreams-theme'
   ```

## Step 5: Optional - Add a Custom Domain

If you have a custom domain:

1. Update the `CNAME` file in the repository root with your domain
2. In GitHub Settings → Pages, add your custom domain
3. Configure your DNS provider to point to GitHub Pages

## Step 6: Add Repository Topics (Optional but Recommended)

1. Go to your repository
2. Click the gear icon next to "About"
3. Add topics (tags) like:
   - `color-theme`
   - `neovim`
   - `tmux`
   - `hyprland`
   - `theme`
   - `colorscheme`
   - `terminal-theme`
4. Add website URL: `https://nylanalyn.github.io/electric-dreams-theme/`
5. Save changes

## Troubleshooting

### GitHub Pages not building?
- Make sure the repository is public
- Check Settings → Pages shows "Your site is live at..."
- Wait a few minutes - first build can take time

### 404 errors on website?
- Verify Pages is set to deploy from `/website` folder
- Check that `index.html` exists in the `website/` directory

### Raw file URLs not working?
- URLs must use `raw.githubusercontent.com`, not `github.com`
- Format: `https://raw.githubusercontent.com/nylanalyn/electric-dreams-theme/main/path/to/file`

### TPM can't find plugin?
- Verify repository is public
- Check that `electric-dreams.tmux` exists in the repository root
- Make sure it's executable: `chmod +x electric-dreams.tmux`

## Future Updates

When you make changes:

```bash
# Make your changes to files
git add .
git commit -m "Description of changes"
git push

# GitHub Pages will automatically rebuild
```

## Need Help?

- GitHub Pages docs: https://docs.github.com/en/pages
- Git basics: https://git-scm.com/book/en/v2/Getting-Started-First-Time-Git-Setup

---

Once setup is complete, delete this file or move it to a docs folder!
