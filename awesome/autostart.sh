#!/bin/bash

export EXCSYS=/home/mika/excsys
export PATH=$PATH:$EXCSYS

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

### screen settings
# run xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal
# run xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off
# run xrandr --output LVDS1 --mode 1366x768 --rotate normal --output VGA1 --primary --mode 1920x1080 --rotate normal --right-of LVDS1
# autorandr horizontal

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
run qbittorrent.sh.x

### for qbittorrent theme to run properly
run qt5ct
# somehow calling qt5ct and auto killing its pid doesn't help qbittorrent to work properly
# so the following script just don't work at all
# run qt5ct-init.sh.x
