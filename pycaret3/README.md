# pycaret server template

## Dependencies
- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- [vagrant-vmware-esxi](https://github.com/josenk/vagrant-vmware-esxi)
- server certificate files by [mkcert](https://github.com/FiloSottile/mkcert)

## Setup
- nginx reverse proxy for url routing and basic authentication
- enable GPU by specifying the following esxi vmx values in Vagrantfile. note that you need to extract those values from the vmx file of any GPU enabled VM.
```
     esxi.guest_custom_vmx_settings = [['pciPassthru0.present','TRUE'], ['pciPassthru0.pciSlotNumber','192'], ['pciPassthru0.id','00000:001:00.0'], ['pciPassthru0.deviceId','0x1f82'], ['pciPassthru0.vendorId','0x10de'], ['pciPassthru0.systemId','61d3b279-6cb1-ccff-5244-001517ddf3aa'], ['sched.mem.min',settings['node']['memory']]]
```

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

