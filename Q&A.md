## Q&A

Q: sudo: editor: command not found

A: The `editor` command doesn't exist by default. In the tutorial you are using they are making `editor` as an alias for `vim` earlier.

> You can just use `vim` (advanced) or `nano` (easy) instead of `editor`.

---

Q: iptables无法启动

A: 新安裝Linux出现iptables启动错误，提示：No config file。

1. 输入`service iptables status`查看状态，提示：iptables: Firewall is not running.。
2. 输入`service iptables start`启动iptables，提示：iptables: No config file.    [WARNING]。
3. 输入`ls /etc/sysconfig/`查看，未找到配置文件iptables。
4. 任意新建一条规则（本例中为`iptables -P OUTPUT ACCEPT`）。
5. 输入`service iptables save`保存，提示已经成功保存到`/etc/sysconfig/iptables`。提示：iptables: Saving firewall rules to /etc/sysconfig/iptables: [   OK    ]
6. 再次输入`ls /etc/sysconfig/`查看可发现配置文件（`iptables`）。
7. 输入`service iptables start`即可启动。

---

Q: -bash: sz/rz: command not found

A: `yum -y install lrzsz`
