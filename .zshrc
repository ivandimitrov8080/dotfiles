source ~/.zsh/antigen.zsh
source /usr/share/git/completion/git-completion.zsh
__git_complete config __git_main

alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

antigen use oh-my-zsh

antigen bundle git
antigen bundle pip

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

antigen theme bira

antigen apply

