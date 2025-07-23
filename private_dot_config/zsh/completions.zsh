# ~/.config/zsh/completions.zsh

# Case-insensitive matching
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'


zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
#zstyle ':completion:*' menu select
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'
zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes
#zstyle ':fzf-tab:*' fzf-preview 'bat --color=always --line-range=:500 $realpath'


# Load specific completions if needed (e.g., Git)
#zstyle ':completion:*:*:git:*' script ~/.config/zsh/completions/_git
