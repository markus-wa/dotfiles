#!/bin/sh
git clone --bare git@github.com:markus-wa/dotfiles.git $HOME/.dotfiles

function dotfiles {
   git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME $@
}


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
