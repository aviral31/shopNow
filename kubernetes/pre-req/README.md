# 🔧 Kubernetes Prerequisites

This directory contains essential cluster components needed before deploying the ShopNow application.

## Required Components

### 1. Metrics Server
```bash
kubectl apply -f metrics-server.yaml
```
Enables resource metrics collection for HPA (Horizontal Pod Autoscaler).

### 2. Ingress Controller (NGINX)
```bash
# For cloud providers
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.8.1/deploy/static/provider/cloud/deploy.yaml

# For local development (minikube/kind)
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.8.1/deploy/static/provider/kind/deploy.yaml
```

## Verification Commands
```bash
# Check metrics server
kubectl top nodes
kubectl top pods -A

# Check ingress controller
kubectl get pods -n ingress-nginx

```