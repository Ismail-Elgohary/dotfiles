export EDITOR="nvim"
export VISUAL="nvim"
export BROWSER="firefox"

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_RUNTIME_DIR="$HOME/.local/run"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export XINITRC="$XDG_CONFIG_HOME/x11/xinitrc"


export PATH="$HOME/.local/bin:$PATH"

[ -z "$DISPLAY" ] && [ "$(tty)" = "/dev/tty1" ] && ! pidof -qsx Xorg && exec startx
