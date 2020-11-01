# DevOpsND-Capstone
Capstone Project of Udacity Cloud DevOps Engineer Nanodegree

## Setup

```bash
cd Kubernetes
```

Create IAM
```bash
./01-create-IAM.sh
```

Create networks
```bash
./02-create-network.sh
```

Create EKS instance
```bash
./03-create-EKS.sh
```

Create EKS nodes
```bash
./04-create-nodes.sh
```

Inport Kubernetes configuration
```bash
aws eks --region us-west-2 update-kubeconfig --name udacity-devops-eks

### Check connection
kubectl get pods --all-namespaces
```
