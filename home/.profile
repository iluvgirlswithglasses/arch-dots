
### disable black screen after inactivity
xset s off
xset -dpms
xset s noblank

### autorun commands on start
# xbindkeys --poll-rc

### screen settings
xrandr --output DP-0 --mode 1920x1080 --pos 0x680 --rotate normal 
xrandr --output HDMI-1 --pos 1920x0 --rotate right

### add environment variables
# executable
export EXC=/home/mika/exc
export PATH=$PATH:$EXC:/home/mika/.local/bin:/home/mika/.deno/bin

# directories
export hdd=/mnt/hdd

# system
export QT_QPA_PLATFORMTHEME=kde # options: kde, qt5ct, gtk
export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=@ibus
export QT_IM_MODULE=ibus
