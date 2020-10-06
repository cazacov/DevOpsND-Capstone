#!/usr/bin/env bash

aws cloudformation create-stack \
    --stack-name udacity-devops-net \
    --template-body file://02-amazon-eks-vpc-private-subnets.yml \
    --region us-west-2 