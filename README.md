# dotfiles

Contains my personal dotfiles for Windows (Git Bash) & Linux.

## Installing

	curl -s https://raw.githubusercontent.com/markus-wa/dotfiles/master/.dotfiles_install.sh | bash	

This creates a bare clone inside `~/.dotfiles`, backs up any files that would be overwritten and checks out all files into the home directory.

## Google Calendar Sync

`crontab -e`

```
*/5 * * * * ~/bin/sync_gcal.sh
```

`.zshenv_secret`

```
export GCAL_URL="[[super secret google calendar url (.ics file)]]"
```

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
|`em`|`emacs`|
|`emacs`|`emacsclient -c -n -a runemacs`|
|`dotf`|`git` with dotfiles config|
|`g`|`git`|
|`gerp`|`grep` (typing is hard)|
|`la`|`ls -la`|
|`top`|`htop`|
|`vi`|`emacs`|

### Git Config

- `autocrlf=input`
- `gpgsign=true`

#### Aliases

|Alias|Function|
|-|-|
|`a`|`add`|
|`alias <alias> <command>`|create new alias|
|`amen`|`commit --amend --no-edit`|
|`amend`|`commit --amend`|
|`c`|`commit -m`|
|`cnv`|`commit --no-verify`|
|`cherry-diff`|Shows the commit differences between two branches|
|`cherry-behind`|Shows the missing commits on the current branch compared to another branch|
|`cherry-ahead`|Shows the missing commits on another branch compared to the current branch|
|`d`|`diff`|
|`fix <ref>`|`commit --fixup <ref>` + `rebase -i --autostash --autosquash <ref>^`|
|`fixup <ref>`|`commit --fixup <ref>`|
|`p`|`push`|
|`pnv`|`push --no-verify`|
|`pair`|Checks ~/.git-authors for email addresses and automatically adds `Co-authored-by: [Other Dev <other.dev@example.com>]`|
|`praise`|`blame`|
|`reword`|`commit --amend --no-verify`|
|`rh`|`reset HEAD`|
|`st`|`status`|
|`stat`|`status`|
|`tree`|display log in tree format|
|`unstage`|`reset HEAD -- ...`|
