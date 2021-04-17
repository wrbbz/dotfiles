# If running from tty1 start sway
export QT_QPA_PLATFORM=wayland-egl
export XDG_CURRENT_DESKTOP=sway
if [ "$(tty)" = "/dev/tty1" ]; then
	exec sway
fi
