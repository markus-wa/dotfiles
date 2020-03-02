#!/bin/bash
git clone --bare git@github.com:markus-wa/dotfiles.git $HOME/.dotfiles

function dotfiles {
   git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
}

# install stuff
sudo apt update

# emacs + spacemacs
sudo apt install emacs26 curl
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# thefuck
sudo apt install python3-dev python3-pip python3-setuptools
sudo pip3 install thefuck

# checkout dotfiles
dotfiles checkout
if [ $? = 0 ]; then
	echo "Checked out dotfiles.";
else
	echo "Backing up pre-existing dotfiles.";
	mkdir -p .dotfiles-backup
	dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .dotfiles-backup/{}
fi;

dotfiles checkout
dotfiles config status.showUntrackedFiles no

# start emacs service
systemctl enable --user emacs
systemctl start --user emacs
