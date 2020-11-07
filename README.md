# DevOpsND-Capstone
Capstone Project of Udacity Cloud DevOps Engineer Nanodegree

## Infrastructure Setup

### Install Kubernetes

```bash
cd infrastructure-setup
```

Create IAM Role

```bash
./01-create-IAM.sh
```

Create VPC with private und public subntets in two availability zones

```bash
./02-create-network.sh
```

Create EKS instance

```bash
./03-create-EKS.sh
```

Create EKS nodes and tag them

```bash
./04-create-nodes.sh
```

Import Kubernetes configuration

```bash
aws eks --region us-west-2 update-kubeconfig --name udacity-devops-eks

### Check connection
kubectl get pods --all-namespaces
```

### Install Jenkins

Install Jenkins and bastion VM

```bash
./05-create-jenkins.sh
```

After creating Cloudformation stacks the AWS console should show them having successful status:

![Screenshot Cloudformation stacks](./_img/cf_stacks_Ok.png)

The stacks expose variables like Jenkins URL and public IP of the bastion VM:

![Screenshot Cloudformation exports](./_img/cf_exports.png)

Deploy SSH key to the bastion VM
```bash
scp -i ~/.ssh/udacity-devops-ssh.pem ~/.ssh/udacity-devops-ssh.pem ubuntu@BASTION:~/.ssh/
```

## Manual build & deploy

### Build and Push

```bash
cd ./webapp

dockerpath=cazacov/learning:capstone


# Authenticate
docker login -u cazacov

# Build
docker build --tag=capstone .

# Tag
docker tag capstone $dockerpath

# Push image to a docker repository
docker push $dockerpath
```

### Deploy

```bash
cd ./kubernetes-deployment

kubectl apply -f deployment.yaml
```

### Check what's running on K8s
```bash
kubectl get all -n default
```