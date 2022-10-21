# pycaret server template

## Dependencies
- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- [vagrant-vmware-esxi](https://github.com/josenk/vagrant-vmware-esxi)
- server certificate files by [mkcert](https://github.com/FiloSottile/mkcert)

## Setup
- nginx reverse proxy for url routing and basic authentication

## Open your browser and go following url
- https://your node/           for jupyter lab
- https://your node/mlflow     for mlflow

## How to add users
- If you want to configure some users in this template, you can add jupyter_auth_user and jupyter_auth_passwd in inventories/dev/vars/pycaret.yml and edit pycaret_server.yml to comment out import tasks/htpasswd.yml. The task will add the specified user in nginx htpasswd.
- The authentication data should be encrypted by providing encrypt key in ~/.vaultpass and create authentication variables as follows;
```
$ echo -n <your user id> | ansible-vault encrypt_string --name jupyter_basic_auth_user
Reading plaintext input from stdin. (ctrl-d to end input)
!vault |
          $ANSIBLE_VAULT;1.1;AES256
	  <snipped>
$ echo -n <your password> | ansible-vault encrypt_string --name jupyter_basic_auth_passwd
Reading plaintext input from stdin. (ctrl-d to end input)
!vault |
          $ANSIBLE_VAULT;1.1;AES256
	  <snipped>
```

