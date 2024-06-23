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

1.  **Install Crossplane**:

    - Enable the Crossplane Helm Chart repository::

      ```sh
      make crossplane-install
      ```

    - Verify Crossplane installed with kubectl get pods:

      ```sh
      kubectl get pods -n crossplane-system

      kubectl api-resources | grep crossplane.
      ```

2.  **Install the AWS provider**:

    - Install the AWS provider:

      ```sh
      make crossplane-provider-aws-install
      ```

    - Verify the provider installed with:

      ```sh
      kubectl get providers
      ```

3.  Create a Kubernetes secret with the AWS credentials

    - Create a Kubernetes secret with the AWS credentials:

      ```sh
      make kube-secret-create-aws
      ```

    - View the secret with:

      ```sh
      kubectl describe secret aws-secret -n crossplane-system
      ```
