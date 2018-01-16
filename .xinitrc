# load xresources
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# use gtk widgets
export QT_STYLE_OVERRIDE=GTK+

# compositor
compton &

# notification daemon
dunst &

# configure touchpad
#xinput --set-prop 'ETPS/2 Elantech Touchpad' "libinput Tapping Enabled" 1
#xinput --set-prop 'ETPS/2 Elantech Touchpad' "libinput Natural Scrolling Enabled" 1

xsetroot -Comix Cursor original Red left_ptr
# start session
exec bspwm
