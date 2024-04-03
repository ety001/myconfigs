/etc/systemd/network/20-wired.network

```
[Match]
Name=enp4s0

[Network]
Address=192.168.30.80/23
Gateway=192.168.30.1
DNS=8.8.8.8 114.114.114.114
```

```
systemctl enable systemd-networkd
systemctl start systemd-networkd
```

```
systemctl enable systemd-resolved
systemctl start systemd-resolved
rm /etc/resolv.conf
ln -s /run/systemd/resolve/stub-resolv.conf /etc/resolv.conf
```
