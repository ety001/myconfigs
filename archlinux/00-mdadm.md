1. 创建分区，每块硬盘头部创建1MB大小分区，分区标记 BIOS Boot，尾部留下大约 100MB 空间

2. 分区设置为 Linux RAID / 43

3. 创建 RAID1 阵列
```
mdadm --create --verbose --level=1 --homehost=tai --metadata=1.2 --raid-devices=2 /dev/md/myraid1 /dev/sda1 /dev/sdb1
```

4. 查看阵列状态
```
cat /proc/mdstat
```

5. 更新阵列信息到配置文件
```
mdadm --detail --scan >> /etc/mdadm.conf
```


