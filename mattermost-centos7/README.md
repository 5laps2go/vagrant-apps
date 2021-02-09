# mattermost-vagrant

Vagrant Setup for mattermost on centos7

## Dependencies
- [Vagrant](https://www.vagrantup.com)
- [vagrant-vmware-esxi](https://github.com/josenk/vagrant-vmware-esxi)
- server certificate files by [mkcert](https://github.com/FiloSottile/mkcert)

## Setup

- Download and install Vagrant with esxi

- Clone this repo

- Start virtual machine

```
cd mattermost-centos7
vagrant up
```

## To restart mattermost service

```
$ vagrant ssh
# sudo service mattermost restart
```

## Open your browser and go https://server_name/


## mattermost installation 
-------
If you want to install mattermost manually, please see the [document](https://docs.mattermost.com/install/install-rhel-7.html#)
