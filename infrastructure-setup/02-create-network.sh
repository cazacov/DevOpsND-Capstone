#!/usr/bin/env bash

aws cloudformation create-stack \
    --stack-name udacity-devops-net \
    --template-body file://02-networks.yml \
    --parameters file://params-cluster.json \
    --region us-west-2 