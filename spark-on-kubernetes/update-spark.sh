#!/bin/bash
# Author: Sam Zheng
# Time: 2017/08/07
#
# It is a shellscript to build spark on kubernetes automatically

PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

kubectl apply -f namespace-spark-cluster.yaml
kubectl apply -f spark-master-controller.yaml
kubectl apply -f spark-master-service.yaml
kubectl apply -f spark-ui-proxy-controller.yaml
kubectl apply -f spark-ui-proxy-service.yaml
kubectl apply -f spark-worker-controller.yaml
kubectl apply -f zeppelin-controller.yaml
kubectl apply -f zeppelin-service.yaml

echo "All service finish"
