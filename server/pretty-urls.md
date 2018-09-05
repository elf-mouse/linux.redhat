## Pretty URLs

### Apache (`.htaccess`)

```
Options +FollowSymLinks -Indexes
RewriteEngine On

RewriteCond %{REQUEST_FILENAME} !-d
RewriteCond %{REQUEST_FILENAME} !-f
RewriteRule ^ index.php [L]
```

### Nginx

```
location / {
    try_files $uri $uri/ /index.php?$query_string;
}
```

---

- H5 `history` mode

```
location / {
    try_files $uri $uri/ @rewrites;
}

location @rewrites {
    rewrite ^(.+)$ /index.html last;
}
```
