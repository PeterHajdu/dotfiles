# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=ignoredups
# ... and ignore same sucessive entries.
export HISTCONTROL=ignoreboth

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"

if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

if [ -f ~/.sagent ]; then
  . ~/.sagent
fi

source ~/.gitfuncs
export PS1='\[\033[1;31m\][ \[\033[1;32m\]\u\[\033[0m\]@\[\033[1;33m\]\h \[\033[1;34m\]\w\[\033[0;36m\]$(__git_ps1 " %s")\[\033[1;31m\] ]\[\033[0m\]\$ '

#ALIASES
alias ls='ls --group-directories-first --color=always'
alias :q='exit'

#COLOURS IN MAN
export LESS_TERMCAP_mb=$'\E[00;32m'
export LESS_TERMCAP_md=$'\E[01;32m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;31m'

export PATH=$PATH:~/bin


