#!/usr/bin/env bash

aws cloudformation update-stack \
    --stack-name udacity-devops-nodes \
    --template-body file://04-nodes.yml \
    --parameters file://params-nodes.json \
    --region us-west-2 \
    --capabilities CAPABILITY_NAMED_IAM
