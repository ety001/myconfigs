```
pacman -S nvidia-dkms nvidia-settings nvidia-utils xorg-server xfce4 lightdm

gpasswd -a ety001 lightdm lightdm-gtk-greeter

```


```
[Seat:*]
...
greeter-session=lightdm-yourgreeter-greeter
...
```
