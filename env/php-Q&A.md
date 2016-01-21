Q:

```
[RuntimeException]                                                        
Could not decompress the archive, enable the PHP zip extension.           
The php.ini used by your command-line PHP is: /path/to/php.ini
```

A: 

* `vi /path/to/php.ini`

```
extension=zip.so
```

* 重启php-fpm

`service php-fpm restart`
