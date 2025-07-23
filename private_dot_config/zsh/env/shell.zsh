# zoxide - better cd
if [[ -x "$(command -v zoxide)" ]]; then
  export _ZO_DATA_DIR="$XDG_DATA_HOME/zoxide"
  eval "$(zoxide init --cmd cd zsh)"
fi

#[ -n "$DISPLAY" ] && export EDITOR=gedit || export EDITOR=nano


# fzf - fuzzy finder
if [[ -x "$(command -v fzf)" ]]; then
	export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
	  --info=inline-right \
	  --ansi \
	  --layout=reverse \
	  --border=rounded \
	  --color=border:#27a1b9 \
	  --color=fg:#c0caf5 \
	  --color=gutter:#16161e \
	  --color=header:#ff9e64 \
	  --color=hl+:#2ac3de \
	  --color=hl:#2ac3de \
	  --color=info:#545c7e \
	  --color=marker:#ff007c \
	  --color=pointer:#ff007c \
	  --color=prompt:#2ac3de \
	  --color=query:#c0caf5:regular \
	  --color=scrollbar:#27a1b9 \
	  --color=separator:#ff9e64 \
	  --color=spinner:#ff007c \
	"
  eval "$(fzf --zsh)"
fi

# startship 
if [[ -x "$(command -v starship)" ]]; then
  export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/config.toml"
  eval "$(starship init zsh)"
fi
