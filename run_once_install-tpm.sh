#!/bin/sh
# run_once_install-tpm.sh
if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
  git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
fi

# Start a detached tmux session, source the config, and install plugins
tmux new-session -d -s plugin_install
tmux source-file ~/.tmux.conf
~/.tmux/plugins/tpm/scripts/install_plugins.sh
tmux kill-session -t plugin_install
