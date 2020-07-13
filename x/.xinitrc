xrdb -merge ~/.Xresources
if [[ "$(echo $HOSTNAME)" = "arch" ]]; then
	feh --bg-max ~/scripts/arch_wallpaper.jpg
	export WINIT_X11_SCALE_FACTOR=1
	dunst &
<<<<<<< HEAD
	xset s off -dpms
=======
	picom -b
	exec dwm
>>>>>>> e3e6dedd49764be3c62aef75cb0d960d034cc4f6
fi
if [[ "$(echo $HOSTNAME)" = "arch-mac" ]]; then
	feh --bg-max ~/scripts/arch_mac_wallpaper.jpg
	sudo modprobe brcmfmac
	export WINIT_X11_SCALE_FACTOR=1.5
	dunst &
	picom -b
	exec i3
fi
picom -b
exec i3
