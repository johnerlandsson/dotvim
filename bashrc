# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions

# Create alias for open any file
alias o=xdg-open

# Use vimx instead of vim to get -selection
alias vim=vimx

# Use vim as default editor
export EDITOR=vim

# Fix tmux colors
if [[ $TERM == xterm ]]; then
	TERM="xterm-256color"
fi

# Use powerline
if [ -f `which powerline-daemon` ]; then
	powerline-daemon -q
	POWERLINE_BASH_CONTINUATION=1
	POWERLINE_BASH_SELECT=1
	. /usr/share/powerline/bash/powerline.sh
fi
