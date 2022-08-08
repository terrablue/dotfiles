# load zgen
source /usr/share/zsh/share/zgen.zsh

if ! zgen saved; then
  zgen oh-my-zsh

  zgen save
fi

source ~/.zsh/aliases.zsh
source ~/.zsh/theme.zsh

# variables {{{
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
BROWSER=/usr/bin/firefox
EDITOR=/usr/bin/nvim
# }}}
# opt {{{
setopt appendhistory autocd extendedglob nomatch notify
unsetopt beep
# }}}
# bindkey {{{
bindkey -v
# }}}

export PATH="$(yarn global bin):$HOME/.local/bin:$PATH:$HOME/.cargo/bin"
export NODE_OPTIONS=--dns-result-order=ipv4first


