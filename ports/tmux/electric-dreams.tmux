#!/usr/bin/env bash
# Electric Dreams theme for tmux
# A neon-inspired color scheme with electric cyan and hot magenta

# Color definitions
BG_DARK="#0a0a0f"
BG_MEDIUM="#151520"
BG_LIGHT="#1a1a2e"
FG_PRIMARY="#e0e0e0"
FG_DIM="#a0a0b0"

CYAN="#00d9ff"
MAGENTA="#ff006e"
PURPLE="#9c27b0"
PINK="#e91e63"
TURQUOISE="#1de9b6"
CRIMSON="#ff1744"
LIGHT_PURPLE="#bb86fc"
GRAY="#4a4a6a"

# Status bar configuration
tmux set-option -g status-style "bg=$BG_MEDIUM,fg=$FG_PRIMARY"
tmux set-option -g status-left-length 100
tmux set-option -g status-right-length 100

# Left status: Session name
tmux set-option -g status-left "#[bg=$CYAN,fg=$BG_DARK,bold] #S #[bg=$BG_MEDIUM,fg=$CYAN]"

# Right status: Host, Date, Time
tmux set-option -g status-right "#[fg=$PURPLE]#[bg=$BG_MEDIUM,fg=$PURPLE] %Y-%m-%d #[fg=$CYAN]#[bg=$BG_MEDIUM,fg=$CYAN,bold] %H:%M #[bg=$CYAN,fg=$BG_DARK,bold] #H "

# Window status
tmux set-window-option -g window-status-style "bg=$BG_MEDIUM,fg=$FG_DIM"
tmux set-window-option -g window-status-format " #I:#W#F "

# Active window status
tmux set-window-option -g window-status-current-style "bg=$MAGENTA,fg=$BG_DARK,bold"
tmux set-window-option -g window-status-current-format " #I:#W#F "

# Window with activity
tmux set-window-option -g window-status-activity-style "bg=$BG_MEDIUM,fg=$TURQUOISE"

# Pane borders
tmux set-option -g pane-border-style "fg=$GRAY"
tmux set-option -g pane-active-border-style "fg=$CYAN"

# Message style (command line)
tmux set-option -g message-style "bg=$BG_LIGHT,fg=$CYAN,bold"
tmux set-option -g message-command-style "bg=$BG_LIGHT,fg=$MAGENTA,bold"

# Mode style (copy mode, etc.)
tmux set-window-option -g mode-style "bg=$MAGENTA,fg=$BG_DARK,bold"

# Clock mode
tmux set-window-option -g clock-mode-colour "$CYAN"
tmux set-window-option -g clock-mode-style 24
