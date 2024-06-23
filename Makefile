.PHONY: kube-start
kube-start:
	minikube start --driver=docker

.PHONY: kube-list
kube-list:
	kubectl config get-clusters

.PHONY: kube-stop
kube-stop:
	minikube stop

.PHONY: kube-secret-create-aws
kube-secret-create-aws:
	kubectl create secret \
	generic aws-secret \
	-n crossplane-system \
	--from-file=creds=./aws-credentials.txt

.PHONY: crossplane-install-repo
crossplane-install-repo:
	helm repo add \
	crossplane-stable https://charts.crossplane.io/stable
	helm repo update

.PHONY: crossplane-install
crossplane-install: crossplane-install-repo
	helm install crossplane \
	crossplane-stable/crossplane \
	--namespace crossplane-system \
	--create-namespace

.PHONY: crossplane-provider-aws-install
make crossplane-provider-aws-install:
	./aws-provider.sh
	