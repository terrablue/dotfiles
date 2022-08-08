# extra paths to execute files from
extra_paths=($(yarn global bin) "$HOME/.local/bin" "$HOME/.cargo")

for extra in $extra_paths
do
  if [ -d $extra ]; then
    export PATH="$PATH:$extra"
  fi
done

# make npm use ipv4 for resolution
export NODE_OPTIONS=--dns-result-order=ipv4first

# history
export HISTFILE=~/.histfile
export HISTSIZE=1000
export SAVEHIST=1000

# default tools
export BROWSER=/usr/bin/firefox
export EDITOR=/usr/bin/nvim
