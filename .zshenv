export GOROOT=/usr/local/go
export PATH="$HOME/bin:$HOME/.local/bin:$HOME/.cargo/bin:$HOME/go/bin:$GOROOT/bin:$GOROOT/misc/wasm:/home/linuxbrew/.linuxbrew/bin:$PATH"
export EDITOR="emacsclient -t"
export VISUAL="emacsclient -c -n -a runemacs"
export BROWSER="firefox"
export RUST_SRC_PATH=$(rustc --print sysroot)/lib/rustlib/src/rust/library

source $HOME/.zshenv_secret
source "$HOME/.cargo/env"
