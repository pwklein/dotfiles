xrdb -merge ~/.Xresources
if [[ "$(echo $HOSTNAME)" = "faust" ]]; then
	xrandr --output DP-3 --primary
	xrandr --output DP-2 --right-of DP-3
	feh --bg-max ~/scripts/arch_wallpaper.jpg --bg-fill ~/scripts/arch_wallpaper.jpg
	export WINIT_X11_SCALE_FACTOR=1
	dunst &
	xset s off -dpms
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
	feh --bg-fill ~/scripts/solid_color.png &
	export WINIT_X11_SCALE_FACTOR=1.0
	dunst &
	exec i3
fi
