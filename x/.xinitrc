xrdb -merge ~/.Xresources
if [[ "$(echo $HOSTNAME)" = "faust" ]]; then
	xrandr --output DP-2 --primary
	xrandr --output DVI-D-1 --right-of DP-2 --rotate left
	feh --bg-max ~/scripts/arch_wallpaper.jpg --bg-fill ~/scripts/arch_wallpaper.jpg
	export WINIT_X11_SCALE_FACTOR=1
	dunst &
	xset s off -dpms
	picom -b
	exec i3
fi
if [[ "$(echo $HOSTNAME)" = "gauss" ]]; then
	feh --bg-fill ~/scripts/arch_wallpaper.jpg
	sudo modprobe brcmfmac
	export WINIT_X11_SCALE_FACTOR=1.5
	dunst &
	picom -b
	exec i3
fi
if [[ "$(echo $HOSTNAME)" = "heisenberg" ]]; then
	feh --bg-fill ~/scripts/arch_wallpaper.jpg
	export WINIT_X11_SCALE_FACTOR=0.8
	dunst &
	picom -b
	exec i3
fi
