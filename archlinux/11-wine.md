1. 启用 multilib, `/etc/pacman.conf`
```
[multilib]
Include = /etc/pacman.d/mirrorlist
```

2. 安装
```
pacman -S wine wine-gecko wine-mono winetricks \
        lib32-nvidia-utils \
        lib32-alsa-lib lib32-alsa-plugins \
        lib32-libpulse  lib32-libxrandr

```

```
WINEPREFIX=~/.game WINEARCH=win32 winetricks gdiplus riched20 riched30
```

```
WINEPREFIX=~/.game WINEARCH=win32 winetricks allfonts
```
