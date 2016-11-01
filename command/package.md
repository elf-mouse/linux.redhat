## rpm包管理命令

__常用__

```
rpm -ivh xxx 安装RPM包
rpm -Uvh xxx 升级rpm包
rpm -ev xxx 卸载rpm包
rpm -qa｜grep xxx 查询已安装rpm包
```

__其他__

```
rpm -q xxx 查看是否已经安装
rpm -qa 查询所有安装的包
rpm -qi xxx 查询软件的描述信息
rpm -ql xxx 查询软件的安装路径：
rpm -qf /etc/yum.conf 查询某个文件是那个rpm包产生
```

## yum包管理命令

__常用__

```
yum -y install xxx 安装
yum update xxx 升级
yum remove xxx 卸载
yum search xxx 搜索
```

__其他__

```
yum remove xxx* 批量移除
yum clean all 清除已经安装过的软件包（/var/cache/yum/）
yum list 列出已安装包
yum info xxx 查询软件信息
yum check-update 列出系统中可升级的所有软件
```

## Linux包转换工具Alien

在RedHat系列中使用alien将deb转换为rpm并安装

```
alien -r package.deb
rpm -ivh package.rpm
```
