```
sudo pacman -S filezilla gimp mpv smplayer obs-studio cups samba \
    thunar-archive-plugin thunar-media-tags-plugin thunar-volman \
    gvfs-smb wqy-bitmapfont wqy-microhei wqy-microhei-lite wqy-zenhei \
    ttf-ubuntu-mono-nerd ttf-ubuntu-nerd ttf-hack-nerd ttf-droid \
    ttf-dejavu-nerd ttf-dejavu noto-fonts noto-fonts-cjk noto-fonts-emoji \
    noto-fonts-extra font-manager  pulseaudio pulseaudio-alsa \
    pulseaudio-bluetooth bluez blueman pavucontrol docker docker-compose \
    docker-buildx firefox firefox-i18n-zh-cn axel libcanberra flameshot \
    alacarte remmina freerdp spice-gtk gtk-vnc thunderbird systray-x-common \
    telegram-desktop galculator bluez-utils tmux xsel

sudo gpasswd -a ety001 cups

sudo systemctl enable cups
sudo systemctl start cups

sudo gpasswd -a ety001 audio

sudo gpasswd -a ety001 docker

sudo pacman -S fcitx5 fcitx5-chinese-addons \
    fcitx5-configtool fcitx5-gtk fcitx5-nord \
    fcitx5-qt ssfconv
```

```
mkdir -p ~/.config/autostart/
cp /etc/xdg/autostart/org.fcitx.Fcitx5.desktop ~/.config/autostart/
```

/etc/environment
```
GTK_IM_MODULE=fcitx
QT_IM_MODULE=fcitx
XMODIFIERS=@im=fcitx
```

```
sudo pacman -S gnome-keyring xfce4-goodies pavucontrol
```

`xfce4-popup-whiskermenu` 弹出 whiskermenu 的快捷键。

```
sudo pacman -S virtualbox virtualbox-host-modules-arch virtualbox-guest-iso
sudo gpasswd -a ety001 vboxusers
sudo modprobe vboxdrv vboxnetadp vboxnetflt
yay -S virtualbox-ext-oracle
```

`/usr/bin/flameshot gui` 截图快捷键配置


