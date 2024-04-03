# Xorg

```
pacman -S xorg-server
```

# Video Card Driver

```
pacman -S nvidia nvidia-settings nvidia-utils
```

# XFCE4

```
pacman -S xfce4
```


# LightDM

```
pacman -S lightdm
gpasswd -a ety001 lightdm lightdm-gtk-greeter
```

```
[Seat:*]
...
greeter-session=lightdm-yourgreeter-greeter
autologin-user=ety001
...
```

```
groupadd -r autologin
gpasswd -a ety001 autologin
systemctl enable lightdm
```


