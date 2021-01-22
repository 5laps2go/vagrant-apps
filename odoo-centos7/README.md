# odoo-vagrant

Vagrant Setup for Odoo on centos7

Dependencies
------------

* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* [vagrant-vmware-esxi](https://github.com/josenk/vagrant-vmware-esxi)

Setup
-----

* Clone this repo

* Start virtual machine

```
cd odoo-centos7
vagrant up
```

* To restart odoo service

```
$ vagrant ssh
# sudo service odoo restart
```

* Open your browser and go http://localhost:8069 or https://your server


pgAdmin 
-------
If you want manage the postgresql server from your computer, you only have to connect to the server via "vagrant ssh", username and password is 'admin'
