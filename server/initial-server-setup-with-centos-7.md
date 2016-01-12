# Initial Server Setup with CentOS 7

## Step One — Root Login

```
local$ ssh root@SERVER_IP_ADDRESS
```

## Step Two — Create a New User

```
root# adduser demo

root# passwd demo
```

## Step Three — Root Privileges

```
root# gpasswd -a demo wheel
```

## Step Four — Add Public Key Authentication (Recommended)

### Generate a Key Pair

```
local$ ssh-keygen
```

ssh-keygen output

```
Generating public/private rsa key pair.
Enter file in which to save the key (/Users/localuser/.ssh/id_rsa):
```

> This generates a private key, `id_rsa`, and a public key, `id_rsa.pub`, in the `.ssh` directory of the localuser's home directory. Remember that the private key should not be shared with anyone who should not have access to your servers!

### Copy the Public Key

* Option 1: Use ssh-copy-id

```
local$ ssh-copy-id demo@SERVER_IP_ADDRESS
```

* Option 2: Manually Install the Key

```
local$ cat ~/.ssh/id_rsa.pub
```

### Add Public Key to New Remote User

```
root# su - demo
```

```
demo# mkdir .ssh
demo# chmod 700 .ssh
```

```
demo# vi .ssh/authorized_keys
```

> Enter insert mode, by pressing `i`, then enter your public key (which should be in your clipboard) by pasting it into the editor. Now hit `ESC` to leave insert mode.

> Enter `:x` then `ENTER` to save and exit the file.

```
demo# chmod 600 .ssh/authorized_keys
```

```
demo# exit
```

## Step Five — Configure SSH Daemon

```
root# vi /etc/ssh/sshd_config
```

To disable remote root logins, we need to find the line that looks like this:

* `/etc/ssh/sshd_config` (before)

```
#PermitRootLogin yes
```

Hint: To search for this line, type `/PermitRoot` then hit `ENTER`. This should bring the cursor to the "P" character on that line.

Uncomment the line by deleting the "#" symbol (press `Shift-x`).

Now move the cursor to the "yes" by pressing `c`.

Now replace "yes" by pressing `cw`, then typing in "no". Hit `Escape` when you are done editing. It should look like this:

* `/etc/ssh/sshd_config` (after)

```
PermitRootLogin no
```

Disabling remote root login is highly recommended on every server!

Enter `:x` then `ENTER` to save and exit the file.

### Reload SSH

```
root# systemctl reload sshd
```

```
local$ ssh demo@SERVER_IP_ADDRESS
```

Remember, if you need to run a command with root privileges, type "sudo" before it like this:

```
demo# sudo command_to_run
```
