#!/bin/bash
# Author: Sam Zheng
# Time: 2017/08/07
#
# It is a shellscript to build spark on kubernetes automatically

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

kubectl delete -f namespace-spark-cluster.yaml
kubectl delete -f spark-master-controller.yaml
kubectl delete -f spark-master-service.yaml
kubectl delete -f spark-ui-proxy-controller.yaml
kubectl delete -f spark-ui-proxy-service.yaml
kubectl delete -f spark-worker-controller.yaml
kubectl delete -f zeppelin-controller.yaml
kubectl delete -f zeppelin-service.yaml

echo "All service finish"
