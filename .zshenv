# Source functions
for f in "$HOME/bin/functions/"*; do source $f; done

# Set variables
export EDITOR=nvim

# Set aliases
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

