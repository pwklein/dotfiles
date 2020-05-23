[[ -f ~/.bashrc ]] && . ~/.bashrc

export EDITOR="vim"
export TERMINAL="urxvt"
export BROWSER="firefox"
export TERMINFO=/usr/lib/terminfo

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep i3 || startx
fi

