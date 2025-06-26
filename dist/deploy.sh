#!/bin/bash

# connecting the cluster :)
aws eks update-kubeconfig --region us-east-1 --name your-cluster-name

# making the kubernetes manifest files work :)
kubectl apply -f k8s/deployment.yml

