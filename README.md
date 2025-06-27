# Welcome

This repository documents everything I’ve been learning and building around Kubernetes.

---

## Commands I've Used

# Kind (Kubernetes in Docker)

### Create cluster
kind create cluster --name my-cluster

### Create cluster with config
kind create cluster --name my-cluster --config=config.yaml

### Delete cluster
kind delete cluster --name my-cluster

# Minikube

### Start Minikube
minikube start

### Stop Minikube
minikube stop

### Delete Minikube cluster
minikube delete

### Check Minikube version
minikube version


# Kubectl

### Version Check
kubectl version --client

### Cluster info
kubectl cluster-info
kubectl get nodes
kubectl config get-contexts

### Namespace operations
kubectl create namespace dev
kubectl get namespaces
kubectl delete namespace dev

### Pod operations
kubectl run podname --image=imagename --restart=Never
kubectl get pods
kubectl delete pod podname

### Pod Interaction
kubectl exec -it pod/podname -n namespace -- bash

### Detailed Resource About a Pod in Namespace
kubectl describe pod/podname -n namespace


