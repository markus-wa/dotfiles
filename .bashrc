# Start SSH agent if neccessary
case "$OSTYPE" in
	linux*)   source ~/.bashrc_linux ;;
	msys*)    source ~/.bashrc_win ;;
	cygwin*)  source ~/.bashrc_win ;;
	*)        echo "unknown: $OSTYPE" ;;
esac

# Run emacs server
runemacs --daemon

# Sane tabs
tabs 4

# Run emacs in client-server mode by default
alias emacs='emacsclient -c -n -a runemacs'

# Aliases
alias vi=vim
alias dotfiles="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
alias la='ls -la'
alias em='emacs'
alias gerp=grep
alias g='git'

if [ -f ~/.bashrc_local ]; then
	source ~/.bashrc_local
fi
