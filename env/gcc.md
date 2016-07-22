## 升级 gcc 4.8+

```sh
# 下载
wget http://gcc.parentingamerica.com/releases/gcc-5.2.0/gcc-5.2.0.tar.bz2
// 或
wget http://ftp.tsukuba.wide.ad.jp/software/gcc/releases/gcc-5.2.0/gcc-5.2.0.tar.bz2

# 解压
tar -xf gcc-5.2.0.tar.bz2

# 下载gcc依赖文件和库
cd gcc-5.2.0
./contrib/download_prerequisites

# 安装
mkdir gcc-temp
cd gcc-temp
../configure --enable-checking=release --enable-languages=c,c++ --disable-multilib
make
make install
ls /usr/local/bin | grep gcc
# 输出如下
gcc
gcc-ar
gcc-nm
gcc-ranlib
x86_64-unknown-linux-gnu-gcc
x86_64-unknown-linux-gnu-gcc-5.2.0    // 就是这个
x86_64-unknown-linux-gnu-gcc-ar
x86_64-unknown-linux-gnu-gcc-nm
x86_64-unknown-linux-gnu-gcc-ranlib
# 升级
/usr/sbin/update-alternatives --install  /usr/bin/gcc gcc /usr/local/bin/x86_64-unknown-linux-gnu-gcc-5.2.0 52

# 验证
gcc -v
g++ -v
```
