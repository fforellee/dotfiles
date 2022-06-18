setxkbmap -option caps:super
#xrandr -s 1366x768
/usr/bin/emacs --daemon
feh --bg-scale ~/dotfiles/imgs/nixos.jpg
rclone mount --daemon livros: ~/Livros
xset m 1/1
exec i3
