# ~/.config/zsh/functions.zsh

# Create a directory and change into it
function mkcd() {
  mkdir -p "$1" && cd "$1"
}
