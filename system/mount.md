# CentOS如何挂载硬盘

## 第一步：列出所有磁盘

命令： `ll /dev/disk/by-path`

> 提示：如果无法确认数据盘设备名称，请使用df命令来确认系统盘的名称，从而排除挂错盘的情况。

## 第二步：格式化硬盘

命令： `fdisk /dev/xvdb`

```
n
p
1


p
w
```

## 第三步：创建分区

命令： `mkfs.ext4 /dev/xvdb1`

## 第四步：挂载分区

命令： `mkdir /data mount /dev/xvdb1 /data` (将xvdb这个硬盘挂载成为/data)

## 第五步：将信息写入fstab,让系统开启自动挂载

命令： `echo "/dev/xvdb1 /data ext4 defaults 0 0" >> /etc/fstab`
