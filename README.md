# dotfiles

Contains my personal dotfiles for Windows (Git Bash) & Linux.

## Installing

	curl -s https://raw.githubusercontent.com/markus-wa/dotfiles/master/.dotfiles_install.sh | sh	

This creates a bare clone inside `~/.dotfiles`, backs up any files that would be overwritten and checks out all files into the home directory.

## Using

`.basrc` contains an alias for git called `dotfiles` which can be used to commit files in the home directory to the bare repository in `~/.dotfiles`.

	dotfiles add .my_dotfile
	dotfiles commit -m 'Added my dotfile'
