# 配置 initramfs

/etc/mkinitcpio.conf 配置中增加 `resume` 钩子
```
HOOKS=(base udev .... filesystems resume fsck)
```

重新生成 initramfs
```
sudo mkinitcpio -P
```

# 配置 Grub

在 /etc/defaut/grub 中配置内核参数 resume

如果使用的是 swap 文件，还需要增加 resume_offset 参数

获取文件所在设备的 UUID
```
sudo findmnt -no UUID -T /swap
```

获取文件的 offset 
```
sudo filefrag -v /swap | awk '$1=="0:" {print substr($4, 1, length($4)-2)}'
```

增加内核参数配置 `GRUB_CMDLINE_LINUX_DEFAULT`

```
resume=UUID=0b5d3b65-8562-4f0e-b603-4b31a25fdc60 resume_offset=14608384
```

重新生成 grub.cfg
```
sudo grub-mkconfig -o /boot/grub/grub.cfg
```

