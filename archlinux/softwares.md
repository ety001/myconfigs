```
sudo pacman -S filezilla gimp mpv smplayer obs-studio cups samba \
    thunar-archive-plugin thunar-media-tags-plugin thunar-volman \
    gvfs-smb wqy-bitmapfont wqy-microhei wqy-microhei-lite wqy-zenhei \
    ttf-ubuntu-mono-nerd ttf-ubuntu-nerd ttf-hack-nerd ttf-droid \
    ttf-dejavu-nerd ttf-dejavu noto-fonts noto-fonts-cjk noto-fonts-emoji \
    noto-fonts-extra font-manager  pulseaudio pulseaudio-alsa \
    pulseaudio-bluetooth bluetooth pavucontrol docker docker-compose \
    docker-buildx firefox firefox-i18n-zh-cn axel

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
sudo pacman -S gnome-keyring
```


