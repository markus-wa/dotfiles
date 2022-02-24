EDITOR="emacsclient -t"
VISUAL="emacsclient -c -n -a runemacs"
export BROWSER="firefox"
export LEIN_USE_BOOTCLASSPATH=no
export GPG_TTY=$(tty)
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export TERMINAL=alacritty

source $HOME/.zshenv_local

if [ -n "$DESKTOP_SESSION" ];then
    eval $(gnome-keyring-daemon --start)
    export SSH_AUTH_SOCK
fi
