Q:

```
[RuntimeException]
Could not decompress the archive, enable the PHP zip extension.
The php.ini used by your command-line PHP is: /path/to/php.ini
```

A:

* 修改 `php.ini`

```
extension=zip.so
```

* 重启 _php-fpm_

`service php-fpm restart`

---

Q: [php 5.6] Deprecated: Automatically populating `$HTTP_RAW_POST_DATA` is deprecated and will be removed in a future version.

修改 `php.ini`

A1: [解决方案一](https://www.bram.us/2014/10/26/php-5-6-automatically-populating-http_raw_post_data-is-deprecated-and-will-be-removed-in-a-future-version/)

```
always_populate_raw_post_data = -1
```

A2: 解决方案二

```
display_errors = Off
```
