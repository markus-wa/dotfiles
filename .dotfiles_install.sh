#!/bin/bash

set -e

# git + zsh
sudo pacman -S git zsh curl emacs alacritty zellij fortune-mod lolcat cowsay fd ripgrep bat

# emacs + spacemacs
if [ ! -d "$HOME/.emacs.d" ]; then
  git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
fi

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

# thefuck
sudo pacman -S python3 python-pip
sudo pip3 install thefuck

git clone --bare https://github.com/markus-wa/dotfiles.git $HOME/.dotfiles

function dotfiles {
    git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
}

# checkout dotfiles
set +e
dotfiles checkout
if [ $? = 0 ]; then
    echo "Checked out dotfiles.";
else
	  echo "Backing up pre-existing dotfiles.";
    set -e
    mkdir -p ~/.dotfiles-backup
    dotfiles checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv ~/{} ~/.dotfiles-backup/{}
fi;
set -e

dotfiles checkout
dotfiles config status.showUntrackedFiles no

# start emacs service
systemctl enable --user emacs
