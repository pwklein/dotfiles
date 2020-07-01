
[[ -f ~/.zshrc ]] && . ~/.zshrc

export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="firefox"
export TERMINFO=/usr/lib/terminfo
export READER="zathura"

if [[ "$(tty)" = "/dev/tty1" ]]; then
	pgrep i3 || startx
fi
