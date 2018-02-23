#
# ~/.bash_profile
#

unset HISTFILE

export PS1='\w\$ '
export HISTCONTROL=ignoredups

[[ -f ~/.bashrc ]] && . ~/.bashrc
