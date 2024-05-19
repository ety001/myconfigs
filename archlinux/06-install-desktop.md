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

`/etc/pam.d/lightdm`
```
#%PAM-1.0
auth        sufficient  pam_succeed_if.so user ingroup nopasswdlogin
auth        include     system-login
...
```

```
groupadd -r nopasswdlogin
gpasswd -a ety001 nopasswdlogin
```

# Language of XFCE4

`~/.i18n`
```
export LANGUAGE=zh_CN.UTF-8
export LANG=zh_CN.UTF-8
export LC_ALL=en_US.UTF-8
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

