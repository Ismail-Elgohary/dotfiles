setopt autocd
setopt interactive_comments
setopt prompt_subst
setopt histignorespace
setopt hist_reduce_blanks
setopt hist_verify
setopt hist_ignore_all_dups


autoload -U vcs_info
zstyle ":vcs_info:*" enable git svn
zstyle ":vcs_info:*" formats "(%b) "
precmd() {
	vcs_info
	echo -ne "\e[1 q"
}
export PROMPT='%B%F{cyan}%c %F{blue}${vcs_info_msg_0_}%F{%(?.green.red)}>%f%b '

HISTSIZE=999999999
SAVEHIST=$HISTSIZE
HISTFILE="${HISTFILE:-${XDG_STATE_HOME:-$HOME/.local/state}/history}"

# setting System

autoload -U compinit
compinit

# some aliases
alias spf="doas poweroff"
alias doas="doas "
alias dm="doas nmtui"
alias dmi="doas make install"
alias xr="doas xbps-remove -R"
alias xi="doas xbps-install -S"
alias xq="xbps-query -R"
alias u="xi; doas xbps-install -u xbps; doas xbps-install -u"
alias e="$EDITOR"
alias c="clear"
alias q="exit"
alias rm="trash"
alias kde="kdeconnect-app"
alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"
alias grep="grep --color=auto"
alias ll="ls -lA"
alias ls="ls -hF --color=auto --group-directories-first"

# git 
alias gst="git status -sb"
alias gpl="git pull"
alias gph="git push"
alias gdf="git diff"
alias gm="git commit -m"
alias gd="git add ."
alias gl="git clone"

# shortcut files
alias dcz="e $HOME/dotfiles/.config/zsh/.zshrc" 
alias dcx="e $HOME/dotfiles/.config/x11/xinitrc"
alias dcn="cd $HOME/dotfiles/.config/nvim"
alias dssc="e $HOME/dotfiles/.config/sxhkd/sxhkdrc"

PROGRAMSDIR="${PROGRAMSDIR:-$HOME/programs}"
ZSHPLUGINSDIR="${ZSHPLUGINSDIR:-/usr/share/zsh/plugins}"
if [ -f "$ZSHPLUGINSDIR/zsh-history-substring-search/zsh-history-substring-search.zsh" ]; then
	. "$ZSHPLUGINSDIR/zsh-history-substring-search/zsh-history-substring-search.zsh"
	bindkey -a "k" history-substring-search-up
	bindkey -a "j" history-substring-search-down
	bindkey "^[[A" history-substring-search-up
	bindkey "^[[B" history-substring-search-down
fi
if [ -f "$ZSHPLUGINSDIR/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh" ]; then
	ZSH_AUTOSUGGEST_STRATEGY=(history completion)
	. "$ZSHPLUGINSDIR/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh"
fi
[ -f "$PROGRAMSDIR/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh" ] &&
	. "$PROGRAMSDIR/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh"

