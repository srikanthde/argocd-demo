# Argo Rollouts

## Install Argo Rollouts into Your Cluster

To install Argo Rollouts, follow the instructions provided in the official documentation: [Argo Rollouts Installation](https://argoproj.github.io/argo-rollouts/installation/#controller-installation)

1. Create a namespace for Argo Rollouts:
    ```bash
    kubectl create namespace argo-rollouts
    ```

2. Apply the installation manifests:
    ```bash
    kubectl apply -n argo-rollouts -f https://github.com/argoproj/argo-rollouts/releases/latest/download/install.yaml
    ```

## Install Argo Rollouts Plugin for kubectl

To install the Argo Rollouts plugin for kubectl, refer to the official plugin installation guide: [Kubectl Plugin Installation](https://argoproj.github.io/argo-rollouts/installation/#kubectl-plugin-installation)

Install the plugin using Homebrew:
```bash
brew install argoproj/tap/kubectl-argo-rollouts

