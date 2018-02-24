if [[ $- != *i* ]] ; then
  # Shell is non-interactive.  Be done now!
  return
fi

shopt -s checkwinsize
shopt -s no_empty_cmd_completion
shopt -s histappend

case ${TERM} in
  [aEkx]term*|rxvt*|gnome*|konsole*|interix)
    PS1='\[\033]0;\u@\h:\w\007\]'
    ;;
  screen*)
    PS1='\[\033k\u@\h:\w\033\\\]'
    ;;
  *)
    unset PS1
    ;;
esac

use_color=false
if type -P dircolors >/dev/null ; then
  LS_COLORS=
  if [[ -f ~/.dir_colors ]] ; then
    eval "$(dircolors -b ~/.dir_colors)"
  elif [[ -f /etc/DIR_COLORS ]] ; then
    eval "$(dircolors -b /etc/DIR_COLORS)"
  else
    eval "$(dircolors -b)"
  fi
  
  if [[ -n ${LS_COLORS:+set} ]] ; then
    use_color=true
  else
    unset LS_COLORS
  fi
else
  case ${TERM} in
  [aEkx]term*|rxvt*|gnome*|konsole*|screen|cons25|*color) use_color=true;;
  esac
fi

if ${use_color} ; then
  if [[ ${EUID} == 0 ]] ; then
    PS1+='\[\033[01;31m\]\h\[\033[01;34m\] \w \$\[\033[00m\] '
  else
    PS1+='\[\033[01;34m\] \w \$\[\033[00m\] '
  fi

  alias ls='ls --color=auto'
  alias grep='grep --colour=auto'
  alias egrep='egrep --colour=auto'
  alias fgrep='fgrep --colour=auto'
  alias rssh='rsync -P -e ssh'
  alias vi="vim"
  alias sock="ssh -D 1080 -f -C -q -N -p 1973 debian"
  alias clock="xmodmap -e 'clear Lock' -e 'keysym Escape = Caps_Lock'"
  alias night="xset -dpms; xset s off; sleep 3h; systemctl poweroff"
else
  if [[ ${EUID} == 0 ]] ; then
    PS1+='\u@\h \w \$ '
  else
    PS1+='\w \$ '
  fi
fi

for sh in /etc/bash/bashrc.d/* ; do
  [[ -r ${sh} ]] && source "${sh}"
done

unset use_color sh
export HISTCONTROL="$HISTCONTROL erasedups:ignoreboth"
export SUDO_PROMPT="Password: "
complete -cf sudo 
