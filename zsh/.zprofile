# If running from tty1 start sway
export QT_QPA_PLATFORM=wayland-egl
if [ "$(tty)" = "/dev/tty1" ]; then
	exec sway
fi
