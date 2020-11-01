#!/usr/bin/env bash

aws cloudformation update-stack \
    --stack-name udacity-devops-iam \
    --template-body file://01-iam.yml \
    --region us-west-2 \
    --capabilities CAPABILITY_NAMED_IAM