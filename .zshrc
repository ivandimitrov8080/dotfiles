# zsh themes and addons
source ~/.antigen/antigen.zsh
source ~/.p10k.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle pip
antigen bundle vi-mode
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen theme romkatv/powerlevel10k
antigen apply

# Enable vi mode
bindkey -v

