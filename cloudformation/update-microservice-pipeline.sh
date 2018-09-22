#!/bin/bash

aws cloudformation update-stack \
    --capabilities CAPABILITY_NAMED_IAM \
    --region eu-west-1 \
    --stack-name wixit-test-auth-pipeline \
    --template-body file://microservice-pipeline.yaml \
    --parameters file://microservice-pipeline-params.json
