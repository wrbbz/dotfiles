#!/bin/sh
userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap
# merge in defaults and keymaps
if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi
 if [ -f $sysmodmap ]; then
     xmodmap $sysmodmap
 fi
if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi
 if [ -f "$usermodmap" ]; then
     xmodmap "$usermodmap"
 fi

# setxkbmap -layout "us,ru" option "grp:escape,grp_led:caps"
# xmodmap ~/.Xmodmap
# compositor
# compton &

# notification daemon

# configure touchpad
#xinput --set-prop 'ETPS/2 Elantech Touchpad' "libinput Tapping Enabled" 1
#xinput --set-prop 'ETPS/2 Elantech Touchpad' "libinput Natural Scrolling Enabled" 1

#setxkbmap -layout us,ru -option 'caps:swapescape, grp:alt_caps_toggle, grp_led:caps'
#setxkbmap -layout us,ru option "grp:escape,grp_led:caps"
setxkbmap -option 'caps:swapescape'
xkbset nullify lock
xinput set-prop 'PS/2 Generic Mouse' 'libinput Middle Emulation Enabled' 1

export _JAVA_AWT_WM_NONREPARENTING=1
exec bspwm
