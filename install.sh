#!/bin/bash

microk8s enable ingress

#install cert-manager
echo "installing cert-manager"
microk8s.kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.10.1/cert-manager.yaml
microk8s.kubectl apply -f ./cert-manager/cluster-issuer-prod.yaml

#install application
echo "deploying application"
kubectl apply -f ./strapi/namespace.yaml
kubectl apply -f ./strapi/service.yaml
kubectl apply -f ./strapi/ingress.yaml
kubectl apply -f ./strapi/deployment.yaml

