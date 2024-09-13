export EDITOR="emacsclient -t"
export VISUAL="emacsclient -c -n -a runemacs"
export BROWSER="chromium"
export LEIN_USE_BOOTCLASSPATH=no
export GPG_TTY=$(tty)
export PATH="$HOME/go/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.emacs.d/bin:$PATH"
export PATH="/opt/google-cloud-sdk/bin:$PATH"
export TERMINAL=alacritty

source $HOME/.zshenv_local

if [ -n "$DESKTOP_SESSION" ];then
   export SSH_AUTH_SOCK=$XDG_RUNTIME_DIR/gcr/ssh
fi
