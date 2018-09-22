#!/bin/bash

if [ -z "$1" ]; then
    echo please provide environment stack name
    exit 1
fi

aws cloudformation describe-stacks --region eu-west-1 --stack-name $1 > temp_environment_stack_desc.json

python cloudformation/stackset/assemble_microservice_params.py cloudformation/stackset/microservice-params-template.json temp_environment_stack_desc.json

rm temp_environment_stack_desc.json
