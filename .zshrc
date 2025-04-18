# startx
if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
	exec startx
fi

tabs 2

# history
HISTFILE=~/.zsh_history
HISTSIZE=30000
SAVEHIST=30000
setopt hist_ignore_dups
setopt hist_ignore_all_dups
setopt share_history

# after cd, automatically ls
setopt auto_cd
function chpwd() { ls --color }

# completion
autoload -Uz compinit
compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
setopt list_packed
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' menu select

# plugin
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# prompt
#PROMPT='%T %~ %F{magenta}%#%f '
PROMPT='♡ %~ %F{magenta}%#%f '
#RPROMPT='${vcs_info_msg_0_}'
RPROMPT='♡ '

# alias
alias ls='ls --color'
alias ll='ls -la --color'
alias clip='xclip -selection c'
export CLICOLOR=1
export LSCOLORS=DxGxcxdxCxegedabagacad

