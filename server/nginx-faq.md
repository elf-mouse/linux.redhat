Q: nginx: [emerg] unknown directive "proxy_http_version"

A: This directive appeared in version `1.1.4`.

---

Q: nginx: [emerg] bind() to 0.0.0.0:80 failed (13: Permission denied)

A: nginx 执行权限问题

- For new

  ```sh
  sudo chown root:wheel /opt/homebrew/Cellar/nginx/1.8.0/bin/nginx
  sudo chmod u+s /opt/homebrew/Cellar/nginx/1.8.0/bin/nginx
  ```

- For old

  ```sh
  sudo chown root:wheel /usr/local/Cellar/nginx/1.8.0/bin/nginx
  sudo chmod u+s /usr/local/Cellar/nginx/1.8.0/bin/nginx
  ```

---

Q: nginx: [error] invalid PID number "" in "/usr/local/var/run/nginx.pid"

A:

```sh
nginx -c /usr/local/etc/nginx/nginx.conf
nginx -s reload
```

---

Q:

```
nginx: [emerg] bind() to 0.0.0.0:8080 failed (48: Address already in use)
nginx: [emerg] still could not bind()
```

A: `sudo apachectl stop`
