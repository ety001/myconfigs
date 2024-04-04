```
sudo pacman -S x11vnc
mkdir -p ~/.config/systemd/user/
cp x11vnc.service ~/.config/systemd/user/
mkdir -p ~/.vnc
x11vnc -storepasswd ~/.vnc/passwd
systemctl --user start x11vnc
systemctl --user enable x11vnc
```
