#!/bin/bash

if [ "$#" -lt 1 ]
then
  echo "Usage: $0 <namespace-number>"
  exit 1
fi

sed "s/\<num\>/$1/g" nfs.yml > nfs$1.yml
sed "s/\<num\>/$1/g" pod.yml > pod$1.yml

kubectl delete -n app$1 -f pod$1.yml
kubectl delete -n app$1 -f nfs$1.yml
kubectl delete ns app$1

rm -f nfs$1.yml pod$1.yml
