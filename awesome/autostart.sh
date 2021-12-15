#!/bin/bash

export EXCSYS=/home/mika/excsys
export PATH=$PATH:$EXCSYS

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

### run services
run nm-applet
# run caffeine
# run pamac-tray
run variety
# run xfce4-power-manager
# run blueberry-tray
run picom
run /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1
run numlockx on
# run volumeicon
run nitrogen --restore
run dunst


### run applications from startup
run qbittorrent.x

### for qbittorrent theme to run properly
run qt5ct
# somehow calling qt5ct and auto killing its pid doesn't help qbittorrent to work properly
# so the following script just don't work at all
# run qt5ct-init.sh.x
