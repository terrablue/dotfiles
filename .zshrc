# load zgen
source /usr/share/zsh/share/zgen.zsh

if ! zgen saved; then
  zgen oh-my-zsh

  zgen save
fi

source ~/.zsh/aliases.zsh
source ~/.zsh/theme.zsh

# opt {{{
setopt appendhistory autocd extendedglob nomatch notify
unsetopt beep
# }}}
# bindkey {{{
bindkey -v
# }}}
