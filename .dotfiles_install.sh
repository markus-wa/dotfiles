#!/bin/bash

set -e

# install stuff
sudo add-apt-repository ppa:kelleyk/emacs
sudo apt update

# git + zsh
sudo apt install -y git zsh

# emacs + spacemacs
sudo apt install -y emacs26
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# thefuck
sudo apt install -y python3-dev python3-pip python3-setuptools
sudo pip3 install thefuck

git clone --bare https://github.com/markus-wa/dotfiles.git $HOME/.dotfiles

function dotfiles {
    git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
}

# checkout dotfiles
set +x
dotfiles checkout
if [ $? = 0 ]; then
    echo "Checked out dotfiles.";
else
	  echo "Backing up pre-existing dotfiles.";
    set -x
    mkdir -p ~/.dotfiles-backup
    dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} ~/.dotfiles-backup/{}
fi;
set -x

dotfiles checkout
dotfiles config status.showUntrackedFiles no

# start emacs service
systemctl enable --user emacs
systemctl start --user emacs
