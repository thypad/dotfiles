#################################
#         LINUX BASICS          #
#################################

# +--------+
# | System |
# +--------+

alias shutdown='sudo shutdown now'
alias restart='sudo reboot'
alias suspend='sudo pm-suspend'

# +----+
# | ls |
# +----+

#alias ls='eza --icons -F -H --group-directories-first --git -1'
#alias l='ls -l'
#alias ll='ls -lahF'
#alias lls='ls -lahFtr'
#alias la='ls -A'
#alias lc='ls -CF'

# +------+
# | wget |
# +------+
alias wget=wget --hsts-file="$XDG_DATA_HOME/wget-hsts"

# +----+
# | cp |
# +----+

alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'
alias la='ls -alh'

# +------+
# | grep |
# +------+

alias grep="grep -P -i --color=auto"


# +--------+
# | zoxide |
# +--------+
#
# zoxide 


# +-----+
# | bat |
# +-----+
if (( $+commands[bat] )); then
  alias cat="bat"
fi


#################################
#          ARCHLINUX            #
#################################

# +--------+
# | pacman |
# +--------+

if (( $+commands[pacman] )); then
  alias paci='sudo pacman -S'               # install
  alias pachi='sudo pacman -Ql'             # Pacman Has Installed - what files where installed in a package
  alias pacs='sudo pacman -Ss'              # search
  alias pacu='sudo pacman -Syu'             # update
  alias pacr='sudo pacman -R'               # remove package but not dependencies
  alias pacrr='sudo pacman -Rs'             # remove package with unused dependencies by other softwares
  alias pacrc='sudo pacman -Sc'             # remove pacman's cache
  alias pacro='pacman -Rns $(pacman -Qtdq)'
  alias pacrl='rm /var/lib/pacman/db.lck'   # pacman remove locks
  alias pacls="sudo pacman -Qe"
  alias pacc='sudo pacman -Sc'
  alias paccc='sudo pacman -Scc'            # empty the whole cache
fi

# +-----+
# | yay |
# +-----+

if (( $+commands[yay] )); then
  alias yayi='yay -S'     # install
  alias yayhi='yay -Ql'   # Yay Has Installed - what files where installed in a package
  alias yays='yay -Ss'    # search
  alias yayu='yay -Syu'   # update
  alias yayr='yay -R'     # remove package but not dependencies
  alias yayrr='yay -Rs'   # remove package with unused dependencies by other softwares
  alias yayrc='yay -Sc'   # remove yay's cache
  alias yayls="yay -Qe"
fi



#################################
#         DEVELOPMENT           #
#################################

# +--------+
# | Neovim |
# +--------+

alias vim='nvim'
alias vi='nvim'
alias svim='sudoedit'
alias dvim="vim -u /usr/share/nvim/archlinux.vim" # nvim with default config
alias nvimc='rm -I $NVIMCONFIG/swap/*'             # clean nvim swap file
alias nvimcu='rm -I $NVIMCONFIG/undo/*'            # clean the vim undo
alias nviml='nvim -w $NVIMCONFIG/vimlog "$@"'      # log the keystrokes 
alias nvimd='nvim --noplugin -u NONE'             # launch nvim without any plugin or config (nvim debug)
alias nvimfr='nvim +e /tmp/scratchpad.md -c "set spelllang=fr"'
alias lvim='\vim -c "set nowrap|syntax off"'        # fast vim for big files / big oneliner

# +-----+
# | Git |
# +-----+

alias gs='git status'
alias gss='git status -s'
alias ga='git add'
alias gp='git push'
alias gpraise='git blame'
alias gpo='git push origin'
alias gpof='git push origin --force-with-lease'
alias gpofn='git push origin --force-with-lease --no-verify'
alias gpt='git push --tag'
alias gtd='git tag --delete'
alias gtdr='git tag --delete origin'
alias grb='git branch -r'                                                                           # display remote branch
alias gplo='git pull origin'
alias gb='git branch '
alias gc='git commit'
alias gd='git diff'
alias gco='git checkout '
alias gl='git log --oneline'
alias gr='git remote'
alias grs='git remote show'
alias glol='git log --graph --abbrev-commit --oneline --decorate'
alias gclean="git branch --merged | grep  -v '\\*\\|master\\|develop' | xargs -n 1 git branch -d" # Delete local branch merged with master
alias gblog="git for-each-ref --sort=committerdate refs/heads/ --format='%(HEAD) %(color:red)%(refname:short)%(color:reset) - %(color:yellow)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:blue)%(committerdate:relative)%(color:reset))'"                                                             # git log for each branches
alias gsub="git submodule update --remote"                                                        # pull submodules
alias gj="git-jump"                                                                               # Open in vim quickfix list files of interest (git diff, merged...)

alias dif="git diff --no-index"                                                                   # Diff two files even if not in git repo! Can add -w (don't diff whitespaces)

# +------+
# | tmux |
# +------+

alias tmuxk='tmux kill-session -t'
alias tmuxa='tmux attach -t'
alias tmuxl='tmux list-sessions'

# +-------+
# | tmuxp |
# +-------+

alias mux='tmuxp load'

# +--------+
# | docker |
# +--------+
alias dockls="docker container ls | awk 'NR > 1 {print \$NF}'"                  # display names of running containers
alias dockRr='docker rm $(docker ps -a -q)'                                     # delete every containers / images
alias dockRr='docker rm $(docker ps -a -q) && docker rmi $(docker images -q)'   # delete every containers / images
alias dockstats='docker stats $(docker ps -q)'                                  # stats on images
alias dockimg='docker images'                                                   # list images installed
alias dockprune='docker system prune -a'                                        # prune everything
alias dockceu='docker-compose run --rm -u $(id -u):$(id -g)'                    # run as the host user
alias dockce='docker-compose run --rm'

# +----------------+
# | docker-compose |
# +----------------+

alias docker-compose-dev='docker-compose -f docker-compose-dev.yml' # run a different config file than the default one




#################################
#           PERSONAL            #
#################################

# nvidia
alias nvidia-settings='nvidia-settings --config="$XDG_CONFIG_HOME"/nvidia/settings'

# Folders
alias work="$HOME/workspace"
alias doc="$HOME/Documents"
alias dow="$HOME/Downloads"
alias dot="$HOME/.dotfiles"

# Mindmaps
alias freebrain="freemind $CLOUD/knowledge_base/_BRAINSTORMING/*.mm &> /dev/null &"
alias freelists="freemind $CLOUD/knowledge_base/_LISTS/*.mm &> /dev/null &"
alias freepain="freemind $CLOUD/knowledge_base/_PROBLEMS/*.mm &> /dev/null &"
alias freeproj="freemind $CLOUD/knowledge_base/_PROJECTS/*.mm &> /dev/null &"


alias topc="procs --sortd cpu"
alias topm="procs --sortd mem"

alias c='clear'
