Q: nginx: [emerg] unknown directive "proxy_http_version"

A: This directive appeared in version `1.1.4`.

---

Q: nginx: [emerg] bind() to 0.0.0.0:80 failed (13: Permission denied)

A: nginx执行权限问题

```
sudo chown root:wheel /usr/local/Cellar/nginx/1.8.0/bin/nginx
sudo chmod u+s /usr/local/Cellar/nginx/1.8.0/bin/nginx
```
