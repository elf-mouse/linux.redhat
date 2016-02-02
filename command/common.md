# 常用 Linux 命令备忘

1、查看 CentOS 发行版本

```
cat /etc/redhat-release
```

2、查看处理器位数

```
uname -a
```

3、查看文件夹大小

```
du -sh
```

4、以 `root` 身份运行上条命令

```
sudo !!
```

5、列出目录里最大的十个文件

```
du -s * | sort -n | tail
```

6、时间戳转换为时间

```
date -d@1234567890
```

7、查看端口及进程

```
netstat -nlp | grep LISTEN // 查看当前所有监听端口
netstat -nlp | grep 80     // 查看所有80端口使用情况
```

8、检查用户登录记录

```
more /var/log/secure
who /var/log/wtmp
```

9、查看所有的进程

```
ps -ef    //常与grep搭配使用：ps -ef | grep
```

10、查看所有用户的 `crontab` 任务

```
cd /var/spool/cron
cat demousername
```

11、让进程转入后台

```
Ctrl + z
```

12、将进程转到前台

```
fg
```

13、产生随机的十六进制数，其中n是字符数

```
openssl rand -hex n
```

14、SSH debug 模式

```
ssh -vvv user@ip_address
```

15、查看是否有 MySQL 端口

```
netstat -ntlp | grep 3306
```
