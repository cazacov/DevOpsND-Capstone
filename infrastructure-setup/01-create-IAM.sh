#!/usr/bin/env bash

aws cloudformation create-stack \
    --stack-name udacity-devops-iam \
    --template-body file://01-iam.yml \
    --region us-west-2 \
    --capabilities CAPABILITY_NAMED_IAM