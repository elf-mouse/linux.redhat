**拷贝隐藏文件**

```sh
cp -a /path/to/a/. /path/to/b
```

**修改主机名**

```sh
vi /etc/sysconfig/network

# 设置
NETWORKING=yes
HOSTNAME=主机名
```

**通过端口查询 PID**

```sh
lsof -ti:3000
```

**批量杀死进程**

```sh
ps -ef | grep 'keywords' | grep -v grep | awk '{print $2}' | xargs kill -9
```
