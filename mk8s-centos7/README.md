# microk8s provision

## microk8s configuration
The configuration is defined by config.yml as nodes structure as follows;
```
nodes:
  - type: "control-plane"
    hostname: "k8s-master"
    cpus: 1
    memory: 2048
    disk_type: "thin"
  - type: "worker"
    hostname: "k8s-node1"
    cpus: 1
    memory: 2048
    disk_type: "thin"
  - type: "worker"
    hostname: "k8s-node2"
    cpus: 1
    memory: 2048
    disk_type: "thin"
```

One control-plane node should be specifided and some worker nodes can be specified as you want. The size of memory is required 2048Mb at minimum and the number of cpu is 1 at minimum.

# kubectl operation
You can use kubectl at k8s-master node like this; 
```
$ vagrant ssh k8s-master
% kubectl get nodes -A
NAME         STATUS   ROLES    AGE     VERSION
k8s-node1    Ready    <none>   6m13s   v1.20.1-34+e7db93d188d0d1
k8s-master   Ready    <none>   10m     v1.20.1-34+e7db93d188d0d1
k8s-node2    Ready    <none>   6m14s   v1.20.1-34+e7db93d188d0d1
```

## helm
```
$ microk8s enable helm3
$ alias helm="microk8s helm3"
```

## kubectl from local machine
- install kubectl
```
$ sudo snap install kubectl --classic # for ubuntu
$ sudo yum install kubernetes-client  # for centos7
```
- configure master information by
```
$ mkdir ~/.kube
$ vagrant ssh k8-master -c "microk8s config" > ~/.kube/config
```
- kubectl version --client
