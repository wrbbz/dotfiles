# If running from tty1 start sway
export QT_QPA_PLATFORM=wayland-egl
export MOZ_ENABLE_WAYLAND=1
if [ "$(tty)" = "/dev/tty1" ]; then
  exec sway
fi
