```
sudo pacman -S x11vnc
mkdir ~/.config/systemd/user/
cp x11vnc.service ~/.config/systemd/user/
x11vnc -storepasswd ~/.vnc/passwd
```
