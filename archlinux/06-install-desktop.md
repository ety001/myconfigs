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

`/var/lib/AccountsService/users/$USER`

```
[User]
Language=zh_CN.UTF-8
```
