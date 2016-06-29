# $OpenBSD: dot.profile,v 1.4 2005/02/16 06:56:57 matthieu Exp $
#
# sh/ksh initialization

PATH=$HOME/.local/bin:$HOME/.cabal/bin:$HOME/bin:/bin:/sbin:/usr/bin:/usr/sbin:/usr/X11R6/bin:/usr/local/bin:/usr/local/sbin:/usr/games:.

export PS1='\W $(git branch 2> /dev/null | grep "^*" 2> /dev/null)\n> '
TERM=screen
export PATH HOME TERM
set -o vi

