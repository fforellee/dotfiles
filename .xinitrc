setxkbmap -option caps:super

xrandr --output HDMI-1 --mode 1440x900

feh --bg-scale ~/dotfiles/imgs/lain6.jpg

/usr/bin/emacs --daemon &

#exec xmonad
exec i3
