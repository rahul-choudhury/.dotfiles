setopt EXTENDED_HISTORY
setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_SAVE_NO_DUPS
setopt HIST_VERIFY

autoload -Uz compinit edit-command-line add-zsh-hook

compinit -d $XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path $XDG_CACHE_HOME/zsh/zcompcache 
zstyle ':completion:*' menu select
zstyle ':completion:*' rehash true

# edit command in vim
zle -N edit-command-line

# exit shell on partial command line
function exit_zsh() { exit }
zle -N exit_zsh
bindkey '^D' exit_zsh

# clear backbuffer using key binding
function clear_screen_and_scrollback() {
    echoti civis >"$TTY"
    printf '%b' '\e[H\e[2J' >"$TTY"
    zle .reset-prompt
    zle -R
    printf '%b' '\e[3J' >"$TTY"
    echoti cnorm >"$TTY"
}
zle -N clear_screen_and_scrollback
bindkey '^L' clear_screen_and_scrollback

bindkey -s ^f "tmux-sessionizer\n"
bindkey -M vicmd v edit-command-line
source /usr/share/fzf/shell/key-bindings.zsh

alias vim=nvim
alias ll='ls -lGAv --color=auto --group-directories-first'
alias yarn='yarn --use-yarnrc "$XDG_CONFIG_HOME/yarn/config"'
alias wget='wget --hsts-file="$XDG_CACHE_HOME/wget-hsts"'

eval "$(starship init zsh)"

source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

