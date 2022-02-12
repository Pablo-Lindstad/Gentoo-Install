doas mv wallpapers /usr/share/
doas mv Zafiro Qogirr /usr/share/icons/
doas mv make.conf /etc/portage/
doas mv Arc-Dark /usr/share/themes/
doas chmod +x lockscreen.sh betterlockscreen reboot.sh shutdown.sh
doas mv lockscreen.sh betterlockscreen reboot.sh shutdown.sh
doas mv nerd-fonts icon-fonts bitmap-fonts normal-fonts /usr/share/fonts
doas mv -v config/* ~/.config/
doas env-update
doas etc-update
doas source /etc/profile
bash -c "$(wget https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh -O -)"
doas emerge -av wget wireless-tools geany thunar tint2 polybar xorg-server xinit openbox nitrogen lxappearance arandr setxkbmap pulseaudio neofetch dunst xbacklight  pavucontrol obconf rofi spectacle layman -q
