# Installation

1. Create a clean ubuntu server.
2. Install Microk8s
3. Change EMAIL variable at cert-manager/cluster-issuer-prod.yaml
4. Change PATH variable at strapi/ingress.yaml (Make sure you path is resolved to this ingress)
5. Run install.sh


# Expected Result

1. Strapi should be deployed with no errors
2. Your service should be availabe at PATH (try)
3. Cert-Manager should resolve the challange and a valid certificate should be stored at starpi-cert

# Results 

1. Strapi is deployed with no errors


2. The service is available at PATH


3. Cert-Manager can't resolve the challange as the http request is transoformed into https and the traffice is routed to strapi service and not to the challange solver.

# Documentation

## Strapi

Strapi is a simple CMS image used with the minimun configuration just for the example. As it will install during first usage it might take some time for the readinessProbe to show working, just check logs in case of any doubts.  