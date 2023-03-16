#!/bin/bash

vagrant ssh k8s-master -c 'microk8s config' > /tmp/kubecfg
alias kubectl='kubectl --kubeconfig /tmp/kubecfg'


pods=( $(kubectl get pod -n cattle-system | egrep -o "rancher-[a-zA-Z0-9-]+") )

for pod in "${pods[@]}" ; do
  kubectl logs -n cattle-system ${pod} | grep "Bootstrap Password:"
done
