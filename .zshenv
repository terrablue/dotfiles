YARN_PATH=$(yarn global bin)

if [ -d $YARN_PATH ]; then
  export PATH="$PATH:$YARN_PATH"
fi

if [ -d "$HOME/.local/bin" ]; then
  export PATH="$PATH:$HOME/.local/bin"
fi

if [ -d "$HOME/.cargo" ]; then
  export PATH="$PATH:$HOME/.cargo:"
fi

# make npm use ipv4 for resolution
export NODE_OPTIONS=--dns-result-order=ipv4first

# history
export HISTFILE=~/.histfile
export HISTSIZE=1000
export SAVEHIST=1000

# default tools
export BROWSER=/usr/bin/firefox
export EDITOR=/usr/bin/nvim
