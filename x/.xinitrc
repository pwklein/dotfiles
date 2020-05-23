xrdb -merge ~/.Xresources
if [[ "$(echo $HOSTNAME)" = "arch" ]]; then
	feh --bg-max ~/scripts/arch_wallpaper.jpg
fi
if [[ "$(echo $HOSTNAME)" = "arch-mac" ]]; then
	feh --bg-max ~/scripts/arch_mac_wallpaper.jpg
	sudo modprobe brcmfmac
fi
exec i3

