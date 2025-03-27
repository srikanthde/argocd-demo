# Kubernetes (k8s) and ArgoCD Local Setup

## KIND Cluster Installation

1. Install KIND using Homebrew:
    ```bash
    brew install kind
    ```

    For more details, check the official KIND documentation: [KIND Quick Start](https://kind.sigs.k8s.io/docs/user/quick-start/#installing-with-a-package-manager)

## Argo CD Installation

1. Install Argo CD CLI using Homebrew:
    ```bash
    brew install argocd
    ```

2. Get the latest release version of Argo CD:
    ```bash
    VERSION=$(curl --silent "https://api.github.com/repos/argoproj/argo-cd/releases/latest" | grep '"tag_name"' | sed -E 's/.*"([^"]+)".*/\1/')
    ```

3. Download the latest Argo CD CLI binary:
    ```bash
    curl -sSL -o argocd-darwin-amd64 https://github.com/argoproj/argo-cd/releases/download/$VERSION/argocd-darwin-amd64
    ```

4. Install the Argo CD CLI binary:
    ```bash
    sudo install -m 555 argocd-darwin-amd64 /usr/local/bin/argocd
    ```

5. Remove the downloaded binary:
    ```bash
    rm argocd-darwin-amd64
    ```

6. For Windows, you can follow the installation steps here:  
   [ArgoCD CLI Installation for Windows](https://github.com/argoproj/argo-cd/blob/master/docs/cli_installation.md#windows)

