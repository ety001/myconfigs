# Xorg

```
pacman -S xorg-server xorg-apps
```

# Video Card Driver

```
pacman -S nvidia nvidia-settings nvidia-utils
```

# XFCE4

```
pacman -S xfce4 xfce4-goodies
```


# LightDM

```
pacman -S lightdm lightdm-gtk-greeter
gpasswd -a ety001 lightdm
```

```
[Seat:*]
...
greeter-session=lightdm-gtk-greeter
autologin-user=ety001
...
```

```
groupadd -r autologin
gpasswd -a ety001 autologin
systemctl enable lightdm
```

# Language of XFCE4

`~/.i18n`
```
export LANGUAGE=zh_CN.utf8
export LANG=zh_CN.utf8
export LC_ALL=en_US.utf8
```

`~/.config/xfce4/xinitrc`
```
#!/bin/sh
if [ -f "$HOME/.i18n" ]; then
    . "$HOME/.i18n"
fi
. /etc/xdg/xfce4/xinitrc
```

```
chmod +x ~/.i18n ~/.config/xfce4/xinitrc
```

