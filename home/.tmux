set -g prefix C-a
set -s escape-time 1
set -g default-terminal "xterm-256color"

bind r source-file ~/.tmux.conf \; display "Reloaded"
bind C-a send-prefix
bind | split-window -h
bind - split-window -v
bind -r h select-pane -L
bind -r j select-pane -D
bind -r k select-pane -U
bind -r l select-pane -R
bind -r C-h select-window -t :-
bind -r C-l select-window -t :+
bind -r H resize-pane -L 5
bind -r J resize-pane -D 5
bind -r K resize-pane -U 5
bind -r L resize-pane -R 5
