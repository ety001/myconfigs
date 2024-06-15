edit `/etc/pulse/default.pa.d/` or `~/.config/pulse/default.pa`

```
.include /etc/pulse/default.pa

# audible bell
load-sample-lazy bell-window-system /usr/share/sounds/freedesktop/stereo/bell.oga
load-module module-x11-bell
```


```
ln -s /data/myconfigs/archlinux/thinkpad/config/pulse/default.pa /home/ety001/.config/pulse/default.pa
```
