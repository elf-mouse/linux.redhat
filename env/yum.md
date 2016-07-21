## 更新yum源

```sh
# 备份
mv /etc/yum.repos.d/CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo.backup
# 下载
wget http://mirrors.163.com/.help/CentOS6-Base-163.repo
cp CentOS6-Base-163.repo /etc/yum.repos.d/CentOS-Base.repo
# 生成缓存
yum clean all
yum makecache
```
