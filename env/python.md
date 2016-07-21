## 安装

```sh
# 下载
wget https://www.python.org/ftp/python/2.7.12/Python-2.7.12.tgz
# 解压
tar xvf Python-2.7.12.tgz
# 编译
cd Python-2.7.12
./configure --prefix=/usr/local/python27
make
make install
# 测试
python -V
```

## 多版本共存

```sh
mv /usr/bin/python /usr/bin/python_old
ln -s /usr/local/python27/bin/python /usr/bin/
python -V
```

## yum的python版本问题

```sh
# 测试
yum

# 修改
vim /usr/bin/yum

#!/usr/bin/python   #修改此处为2.6的位置
#!/usr/bin/python2.6

# 测试
yum
```
