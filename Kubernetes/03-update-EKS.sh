#!/usr/bin/env bash

aws cloudformation update-stack \
    --stack-name udacity-devops-eks \
    --template-body file://03-eks.yml \
    --region us-west-2 
