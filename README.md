# Kubernetes (k8s) and ArgoCD Local Setup

## KIND Cluster Installation

 Install KIND using Homebrew:
    ```bash
    brew install kind
    ```

    For more details, check the official KIND documentation: [KIND Quick Start](https://kind.sigs.k8s.io/docs/user/quick-start/#installing-with-a-package-manager)

## Argo CD Installation

1. Install Argo CD CLI using Homebrew:
      ```bash
    brew install argocd
    ```

2. install ArgoCD in k8s
      ``` bash 
    kubectl create namespace argocd
    kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml
    ```
3. access ArgoCD UI
      ```bash
      kubectl get svc -n argocd
      kubectl port-forward svc/argocd-server 8080:443 -n argocd
   ```
4. login with admin user and below token (as in documentation):
      ```bash
      kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 --decode && echo
      ```
# you can change and delete init password

