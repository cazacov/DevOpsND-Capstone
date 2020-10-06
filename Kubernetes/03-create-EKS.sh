#!/usr/bin/env bash

aws cloudformation create-stack \
    --stack-name udacity-devops-eks \
    --template-body file://03-eks.yml \
    --region us-west-2 
