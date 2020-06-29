xrdb -merge ~/.Xresources
if [[ "$(echo $HOSTNAME)" = "arch" ]]; then
	feh --bg-max ~/scripts/arch_wallpaper.jpg
	export WINIT_X11_SCALE_FACTOR=1
	dunst &
fi
if [[ "$(echo $HOSTNAME)" = "arch-mac" ]]; then
	feh --bg-max ~/scripts/arch_mac_wallpaper.jpg
	sudo modprobe brcmfmac
	export WINIT_X11_SCALE_FACTOR=1.5
fi
picom -b
exec dwm
