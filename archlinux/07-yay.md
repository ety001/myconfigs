# Install

```
pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
```

# Disable debug package

`/etc/makepkg.cfg`
```
OPTIONS=(strip ....... !debug lto)
```

# Change download tools of makepkg
[refer](https://akawa.ink/2022/03/27/makepkg-curl-aria2c?highlight=makepkg)

File: `/etc/makepkg.conf`.

```
DLAGENTS=('file::/usr/bin/curl -qgC - -o %o %u'
          'ftp::/usr/bin/aria2c -UWget -s4 %u -o %o'
          'http::/usr/bin/aria2c -UWget -s4 %u -o %o'
          'https::/usr/bin/aria2c -UWget -s4 %u -o %o'
          'rsync::/usr/bin/rsync --no-motd -z %u %o'
          'scp::/usr/bin/scp -C %u %o')
```
