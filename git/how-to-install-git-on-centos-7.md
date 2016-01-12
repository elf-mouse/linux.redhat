# How To Install Git on CentOS 7

## Install Git

* Option One — Install Git with Yum

```
sudo yum install git

git --version
```

* Option Two — Install Git from Source

```
sudo yum groupinstall "Development Tools"
sudo yum install gettext-devel openssl-devel perl-CPAN perl-devel zlib-devel
```

Note: the URL that you copied may be different from mine, since the release that you download may be different.

```
wget https://github.com/git/git/archive/vX.Y.Z.tar.gz -O git.tar.gz
tar -zxf git.tar.gz

cd git-*
make configure
./configure --prefix=/usr/local
sudo make install

git --version
```

## Set Up Git

```
git config --global user.name "Your Name"
git config --global user.email "you@example.com"
```

```
git config --list
```

```
user.name=Your Name
user.email=you@example.com
```
