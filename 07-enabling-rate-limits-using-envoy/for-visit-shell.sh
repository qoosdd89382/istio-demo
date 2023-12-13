#!/bin/bash

for (( i=1; i<=15; i++ ))
do
  kubectl exec "$(kubectl get pod -l app=ratings -o jsonpath='{.items[0].metadata.name}')" -c ratings -- curl -s productpage:9080/productpage -o /dev/null -w "%{http_code}\n"
done