source ~/.config/zsh/antigen.zsh

#Enable vi mode
bindkey -v
export EDITOR=nvim

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

antigen use oh-my-zsh

antigen bundle git
antigen bundle pip
antigen bundle vi-mode

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

antigen theme fino-time

antigen apply

