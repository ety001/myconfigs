1. 启用 multilib, `/etc/pacman.conf`
```
[multilib]
Include = /etc/pacman.d/mirrorlist
```

2. 安装
```
pacman -S wine wine-gecko wine-mono \
        lib32-nvidia-utils \
        lib32-alsa-lib lib32-alsa-plugins \
        lib32-libpulse

```
