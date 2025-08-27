# code develop environment preparation for vagrant for esxi clone templates
- This is the environment to build esxi clone templates.

Dependencies
------------

* [Vagrant Box](https://portal.cloud.hashicorp.com/vagrant/discover)
* [Vagrant](https://www.vagrantup.com)

Setup
-----
- authorized_keys preparation
 You need to hold the public key which is also registered in github.com.
```
$ cat ~/.ssh/authorized_keys
ssh-rsa AAAAB3N *** SNIP *** wRb+GRsbSwuw== XXXXXXXX@github/34421490 # ssh-import-id gh:XXXXXXXX
```
- configure .ssh/config by coping local .ssh/config
```
$ cat ~/.ssh/config
Host *
  ForwardAgent yes
Host github.com
  StrictHostKeyChecking no

$ chmod 0600 ~/.ssh/config
```
- configure the server
```
$ vagrant up
```

