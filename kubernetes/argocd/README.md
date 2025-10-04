# ArgoCD app-of-apps for shopNow

This directory contains ArgoCD Application manifests:

- umbrella-application.yaml — an "app-of-apps" Application that points to argocd/apps and therefore manages the child Application resources.
- apps/<service>-app.yaml — ArgoCD Applications for frontend, backend, admin and mongo charts.

Usage:
1. Ensure ArgoCD is installed in the cluster (namespace: argocd).
2. Create a project in ArgoCD if you want custom restrictions (optional).
3. Apply umbrella Application to ArgoCD:
   kubectl apply -f argocd/umbrella-application.yaml -n argocd

ArgoCD will read argocd/apps and create the child Application resources.
Adjust repoURL and target namespaces in the manifests if needed.
