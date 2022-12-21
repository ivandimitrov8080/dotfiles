# Source functions
for f in "$HOME/bin/functions/"*; do source $f; done

# Set variables
export EDITOR=nvim
export TZ='Europe/London'
export PNPM_HOME="/home/ivand/.local/share/pnpm"

# Set aliases
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

. "$HOME/.cargo/env"

