# Start SSH agent if neccessary
if [ ! -S ~/.ssh/ssh_auth_sock ]; then
	echo 'Starting SSH agent . . .'
	eval `ssh-agent`
	ln -sf "$SSH_AUTH_SOCK" ~/.ssh/ssh_auth_sock
fi
export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock
ssh-add -l > /dev/null || ssh-add

# Sane tabs
tabs 4

# Aliases
alias vi=vim
alias dotfiles="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
