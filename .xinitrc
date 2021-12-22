#!/bin/sh

### TEMP FIX CLOCK
date +"%d %b %Y %T %Z" -s "$(wget -qSO- --max-redirect=0 http://google.com 2>&1 | grep '^  Date:' | cut -d' ' -f 5-)"


userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap
export GTK2_RC_FILES=~/.config/gtk-2.0/gtkrc-2.0
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

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

#picom -b &
#redshift -l 52:13 &
exec i3

