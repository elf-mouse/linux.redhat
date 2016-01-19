Q: 

```
Git configured for git user? ... _no_
```

A: 确保 `.gitconfig` 和 `config/gitlab.yml` 的匹配

---

Q:

```
Check GitLab API access: /home/gitlab/gitlab-shell/lib/gitlab_net.rb:122:in `read': No such file or directory @ rb_sysopen - /home/gitlab/gitlab-shell/.gitlab_shell_secret (Errno::ENOENT)
        from /home/gitlab/gitlab-shell/lib/gitlab_net.rb:122:in `secret_token'
        from /home/gitlab/gitlab-shell/lib/gitlab_net.rb:79:in `get'
        from /home/gitlab/gitlab-shell/lib/gitlab_net.rb:39:in `check'
        from /home/gitlab/gitlab-shell/bin/check:11:in `<main>'
```

A: __gitlab-shell__ 使用 `v2.0.1`

---

Q:

```
Check GitLab API access: FAILED. code: 502
```

A: 根据 error_log 修改 `/etc/nginx/conf.d/gitlab.conf` 配置

```
upstream gitlab-workhorse {
  server unix:/home/git/gitlab/tmp/sockets/gitlab-workhorse.socket fail_timeout=0;
}

修改为

upstream gitlab {
  server unix:/home/git/gitlab/tmp/sockets/gitlab.socket fail_timeout=0;
}
```
