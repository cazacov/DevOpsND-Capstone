#!/usr/bin/env bash

aws cloudformation create-stack \
    --stack-name udacity-devops-eks \
    --template-body file://03-eks.yml \
    --parameters file://params-cluster.json \
    --region us-west-2 
