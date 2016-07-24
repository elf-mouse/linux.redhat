```
groupadd holli

# useradd [username] -g [groupname]
useradd findchat -g holli
passwd findchat
useradd xing.ming -g users

mkdir ~/.ssh
vi authorized_keys
cat id_rsa.pub >> .ssh/authorized_keys
```
