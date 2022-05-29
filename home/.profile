
### disable black screen after inactivity
xset s off
xset -dpms
xset s noblank

### autorun commands on start
# xbindkeys --poll-rc

### screen settings
xrandr --output DP-0 --mode 1920x1080 --pos 0x650 --rotate normal 
xrandr --output HDMI-1 --pos 1920x0 --rotate right

### add environment variables
# executable
export EXC=/home/mika/exc
export EXCSYS=/home/mika/excsys
export PATH=$PATH:$EXC:$EXCSYS:/home/mika/.local/bin
export GAMEDIR=/home/mika/wine/

# directories
export hdd=/mnt/hdd

# system theme
# options: kde, qt5ct
export QT_QPA_PLATFORMTHEME=kde

