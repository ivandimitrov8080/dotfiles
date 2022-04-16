# Installation steps

1. Add this alias to zshrc

	`alias config='/usr/bin/git --git-dir=$HOME/.cfg --work-tree=$HOME'`

3. Ignore the .cfg dir in git

	`echo ".cfg" > .gitignore`

4. Create the .cfg folder by cloning this repo into your $HOME/.cfg directory

	`git clone --bare https://gitlab.com/ivandimitrov8080/dotfiles.git $HOME/.cfg`

5. Checkout the bare repository using the alias created at step 1

	`config checkout`

6. Set `showUntrackedFiles` to no for this repo

	`config config --local status.showUntrackedFiles no`

Done!

