```
dd if=/dev/zero of=/swap bs1M count=16384
mkswap /swap
chmod 700 /swap
swapon /swap
```

`/etc/fstab` add a new line in this file.

```
UUID=xxxxx none swap defaults 0 0
```
