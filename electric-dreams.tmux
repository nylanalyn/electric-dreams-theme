#!/usr/bin/env bash
# Electric Dreams theme for tmux
# TPM entry point - sources the actual theme from ports/tmux/

PLUGIN_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Source the theme configuration
tmux source-file "$PLUGIN_DIR/ports/tmux/electric-dreams.tmuxtheme"
