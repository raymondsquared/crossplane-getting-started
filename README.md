# crossplane-getting-started

## Prerequisites

### Kubernetes

1. **Install Docker**:
   Ensure Docker is installed on your system:

   ```sh
   brew install docker
   ```

2. **Install Kubernetes**:
   If you prefer to use a local k8s, install `minikube` and start it by running:
   ```sh
   make kube-start
   ```

## Usage

1. **Install Crossplane**:

   - Enable the Crossplane Helm Chart repository::

     ```sh
     make crossplane-install
     ```

   - Verify Crossplane installed with kubectl get pods:

     ```sh
     kubectl get pods -n crossplane-system
     
     kubectl api-resources | grep crossplane.
     ```
