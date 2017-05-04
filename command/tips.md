__拷贝隐藏文件__

```
cp -a /path/to/a/. /path/to/b
```

__修改主机名__

```
vi /etc/sysconfig/network

设置：

NETWORKING=yes
HOSTNAME=主机名
```

__通过端口查询PID__

```
lsof -ti:3000
```
