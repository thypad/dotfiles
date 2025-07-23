# --- Pyenv (Python Version Management) ---
export PYENV_ROOT="$XDG_DATA_HOME/pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"

# Initialize pyenv and pyenv-virtualenv
if [[ -x "$(command -v pyenv)" ]]; then
	eval "$(pyenv init - zsh)"
	eval "$(pyenv virtualenv-init -)"
fi
