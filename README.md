# dotfiles

Contains my personal dotfiles for Windows (Git Bash) & Linux.

## Installing

	wget -q -O - https://raw.githubusercontent.com/markus-wa/dotfiles/master/.dotfiles_install.sh | sh	

This creates a bare clone inside `~/.dotfiles`, backs up any files that would be overwritten and checks out all files into the home directory.

## Managing the Repository

`.basrc` contains an alias for `git` called `dotfiles` which can be used to commit files in the home directory to the bare repository in `~/.dotfiles`.

	dotfiles add .my_dotfile
	dotfiles commit -m 'Added my dotfile'

## Features

### General

- Autostart `emacs` daemon
- Autostart `ssh-agent`
- Set tabs to 4 spaces (vi & terminal)
- Swiss keyboard config (`.inputrc`)
- Spacemacs config

### Aliases

|Alias|Function|
|-|-|
|`em`|`emacsclient -c -n -a runemacs`|
|`g`|`git`|
|`gerp`|`grep` (typing is hard)|
|`la`|`ls -la`|
|`vi`|`vim`|

### Git Config

- `autocrlf=input`
- `gpgsign=true`

#### Aliases

|Alias|Function|
|-|-|
|`alias <alias> <command>`|create new alias|
|`tree`|display log in tree format|
|`fix <ref>`|`commit --fixup <ref>` + `rebase -i --autostash --autosquash <ref>^`|
|`fixup <ref>`|`commit --fixup <ref>`|
|`c`|`commit`|
|`cnv`|`commit --no-verify`|
|`amen`|`commit --amend --no-edit`|
|`amend`|`commit --amend`|
|`reword`|`commit --amend --no-verify`|
|`p`|`push`|
|`pnv`|`push --no-verify`|
|`praise`|`blame`|
|`unstage`|`reset HEAD -- ...`|
|`stat`|`status`|
|`pair`|Checks ~/.git-authors for email addresses and automatically adds `Co-authored-by: [Other Dev <other.dev@example.com>]`|
|`cherry-diff`|Shows the commit differences between two branches|
|`cherry-behind`|Shows the missing commits on the current branch compared to another branch|
|`cherry-ahead`|Shows the missing commits on another branch compared to the current branch|
