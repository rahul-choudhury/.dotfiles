export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"

export BUN_INSTALL="$HOME/.bun"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export CUDA_CACHE_PATH="$XDG_CACHE_HOME/nv"
export HISTFILE="$XDG_STATE_HOME/zsh/history"
export NODE_REPL_HISTORY="$XDG_DATA_HOME/node_repl_history"
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/pass"
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

export HISTSIZE=50000
export SAVEHIST=10000
export KEYTIMEOUT=1 # vi-mode escape time

export EDITOR='nvim'
export VISUAL='nvim'

export RCLONE_PASSWORD_COMMAND='pass rclone/config'

typeset -U path PATH
path=(~/.local/bin $BUN_INSTALL/bin $path)
export PATH

