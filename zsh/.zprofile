
[[ -f ~/.zshrc ]] && . ~/.zshrc

export EDITOR="vim"
export TERMINAL="alacritty"
export BROWSER="qutebrowser"
export TERMINFO=/usr/lib/terminfo

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep i3 || startx
fi
