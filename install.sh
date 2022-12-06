microk8s enable nginx 

#install cert-manager
microk8s.kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.10.1/cert-manager.yaml
microk8s.kubectl apply -f ./cert-manager/cluster-issuer-prod.yaml

#install application
microk8s.kubectl apply -f ./strapi/namespace.yaml
microk8s.kubectl apply -f ./strapi/service.yaml
microk8s.kubectl apply -f ./strapi/ingress.yaml
microk8s.kubectl apply -f ./strapi/deployment.yaml
