```
pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay-bin.git
cd yay-bin
makepkg -si
```

disable debug package
`/etc/makepkg.cfg`
```
OPTIONS=(strip ....... !debug lto)
```
