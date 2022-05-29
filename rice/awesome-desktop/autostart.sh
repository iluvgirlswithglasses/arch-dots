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
run qbittorrent
