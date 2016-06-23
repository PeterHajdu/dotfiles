#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source /usr/share/git/completion/git-prompt.sh
#export PS1='[\[\033[38;5;46m\]\u\[$(tput sgr0)\]@\[\033[38;5;172m\]\h\[$(tput sgr0)\] \W\[\033[38;5;39m\]$(__git_ps1 " (%s)")\[$(tput sgr0)\]]\n\$ '
export PS1='\W$(__git_ps1 " (%s)")\n> '

PATH=~/bin:~/.cabal/bin:$PATH

