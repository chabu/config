#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# for common use
alias la='ls -Fa'
alias ll='ls -Fal'

# for Arch Linux
alias arch-processes='ps -eFHww'
alias arch-traceroute='traceroute -I -N1 -w1 -q1'
alias arch-firewall='iptables -nvL --line-numbers'
alias arch-firewall6='ip6tables -nvL --line-numbers'
alias arch-nat='iptables -t nat -nvL --line-numbers'
alias arch-tcp='ip tcp_metrics'
alias arch-clean='pacman -Sc --noconfirm && pacman-optimize'

# for macOS
alias mac-traceroute='traceroute -I -m32 -q1 -w1'
alias mac-traceroute6='traceroute6 -I -l -m32 -q1 -w1'
