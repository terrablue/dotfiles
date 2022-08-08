alias ls="ls --color=auto"
alias vim="nvim"
alias vi="vim"

# systemctl
alias systemctl="sudo systemctl"
alias start="systemctl start"
alias stop="systemctl stop"
alias reload="systemctl reload"

# git
alias push="git push"
alias pull="git pull"
alias stash="git stash"
alias unstash="git stash pop"
alias status="git status"

# docker / docker-compose
alias docker="sudo docker"
alias d-logs="docker logs"
alias d-enter="docker exec -it"
alias d-rm="docker rm"

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

ngrep() {
  grep $1 * -iR --exclude-dir={test,build,out,tools,doc,deps,benchmark} --color=always
}

export CC="ccache gcc"
export CXX="ccache g++"
