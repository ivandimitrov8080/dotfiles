source ~/.zsh/antigen.zsh
source /usr/share/git/completion/git-completion.zsh
__git_complete config __git_main

#Enable vi mode
bindkey -v

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

antigen use oh-my-zsh

antigen bundle git
antigen bundle pip
antigen bundle vi-mode

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

antigen theme bira

antigen apply

