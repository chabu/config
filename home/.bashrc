#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# for common use
alias la='ls -Fa'
alias ll='ls -Fal'

# for Arch Linux
alias linux-processes='ps -eFHww'
alias linux-traceroute='traceroute -I -N1 -w1 -q1'
alias linux-firewall='iptables -nvL --line-numbers'
alias linux-firewall6='ip6tables -nvL --line-numbers'
alias linux-nat='iptables -t nat -nvL --line-numbers'
alias linux-tcp='ip tcp_metrics'
alias linux-clean='pacman -Sc --noconfirm && pacman-optimize'

# for macOS
alias bsd-traceroute='traceroute -I -m32 -q1 -w1'
alias bsd-traceroute6='traceroute6 -I -l -m32 -q1 -w1'
