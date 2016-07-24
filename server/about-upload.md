## nginx

> 遇到上传文件问题 `413 Request Entity Too Large`

查到了 nginx `client_max_body_size`，原来默认值只有 1m，太小了

* nginx的特性 `http` `server` `location` 只能从大到小，不能从小到大

## php.ini

参数 | 设置 | 说明
---- | ---- | ----
`file_uploads` | on | 是否允许通过HTTP上传文件的开关。默认为ON即是开
`upload_tmp_dir` | – | 文件上传至服务器上存储临时文件的地方，如果没指定就会用系统默认的临时文件夹
`upload_max_filesize` | 8m | 望文生意，即允许上传文件大小的最大值。默认为2M
`post_max_size` | 8m | 指通过表单POST给PHP的所能接收的最大值，包括表单里的所有值。默认为8M
`max_execution_time` | 600 | 每个PHP页面运行的最大时间值(秒)，默认30秒
`max_input_time` | 600 | 每个PHP页面接收数据所需的最大时间，默认60秒
`memory_limit` | 8m | 每个PHP页面所吃掉的最大内存，默认8M

__说明__

* 一般地，设置好上述四个参数后，在网络正常的情况下，上传<=8M的文件是不成问题
* 但如果要上传>8M的大体积文件，只设置上述四项还一定能行的通。除非你的网络真有100M/S的上传高速，否则你还得继续设置下面的参数。
