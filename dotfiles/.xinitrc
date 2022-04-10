setxkbmap -option caps:super
xrandr -s 1440x900
/run/current-system/sw/bin/emacs --daemon
feh --bg-scale ~/dotfiles/imgs/wallpaper.jpg
rclone mount --daemon livros: ~/Livros
xset m 1/1
exec i3
