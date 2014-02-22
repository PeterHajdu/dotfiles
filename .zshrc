HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory extendedglob notify
unsetopt autocd beep nomatch
bindkey -v
autoload -Uz compinit
compinit

setopt prompt_subst
autoload -Uz vcs_info
zstyle ':vcs_info:*' actionformats '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{3}|%F{1}%a%F{5}]%f '
zstyle ':vcs_info:*' formats '%F{5}(%f%s%F{5})%F{3}-%F{5}[%F{2}%b%F{5}]%f '
zstyle ':vcs_info:(sv[nk]|bzr):*' branchformat '%b%F{1}:%F{3}%r'
zstyle ':vcs_info:*' enable git

vcs_info_wrapper() {
vcs_info
if [ -n "$vcs_info_msg_0_" ]; then
  echo "%{$fg[grey]%}${vcs_info_msg_0_}%{$reset_color%}$del"
fi
}

autoload -U colors && colors
PROMPT="[%{$fg[green]%}%n%{$reset_color%}@%{$fg[cyan]%}%m %{$fg_no_bold[yellow]%}%1~%{$reset_color%}]%#"
RPROMPT=$'$(vcs_info_wrapper)'

#auto completion with menu
zstyle ':completion:*' menu select

#ignore duplicate history entries
setopt HIST_IGNORE_DUPS

path+=(~/todo ~/bin)

