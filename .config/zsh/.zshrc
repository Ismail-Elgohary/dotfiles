setopt autocd
setopt interactive_comments
setopt prompt_subst
setopt histignorespace
setopt hist_reduce_blanks
setopt hist_verify
setopt hist_ignore_all_dups
stty stop undef

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
alias spf="doas poweroff"
alias doas="doas "

# some aliases 
alias e="$EDITOR"
alias u="i; doas xbps-install -u xbps; doas xbps-install -u"
alias xi="doas xbps-install -S"
alias xr="doas xbps-remove -R"
alias xq="xbps-query -R"
alias q="exit"
alias g="git"
alias gst="git status -sb"
alias gpl="git pull"
alias gph="git push"
alias c="clear"
alias gdf="git diff"
alias ls="ls -hF --color=auto --group-directories-first"
alias ll="ls -lA"
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"

