#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias la='ls -Fa'
alias ll='ls -Fal'
alias pt='ps -eFHww'
alias tra='traceroute -I -N1 -w1 -q1'
alias fw4='iptables -nvL --line-numbers'
alias fw6='ip6tables -nvL --line-numbers'
alias nat='iptables -t nat -nvL --line-numbers'
alias paclean='pacman -Sc --noconfirm && pacman-optimize'
