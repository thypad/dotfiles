bindkey -e

bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey '^[w' kill-region

bindkey '^I'   complete-word       # tab          | complete
bindkey '^[[Z' autosuggest-accept  # shift + tab  | autosuggest
