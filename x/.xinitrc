xrdb -merge ~/.Xresources
if [[ "$(echo $HOSTNAME)" = "faust" ]]; then
	feh --bg-max ~/scripts/arch_wallpaper.jpg
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
