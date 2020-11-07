#!/usr/bin/env bash

aws cloudformation create-stack \
    --stack-name udacity-devops-jenkins \
    --template-body file://05-jenkins.yml \
    --parameters file://params-jenkins.json \
    --region us-west-2 \
    --capabilities CAPABILITY_NAMED_IAM
