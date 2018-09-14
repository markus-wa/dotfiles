# Start SSH agent if neccessary
case "$OSTYPE" in
	linux*)   source ~/.bashrc_linux ;;
	msys*)    source ~/.bashrc_win ;;
	cygwin*)  source ~/.bashrc_win ;;
	*)        echo "unknown: $OSTYPE" ;;
esac

# Sane tabs
tabs 4

# Aliases
alias vi=vim
alias dotfiles="git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
