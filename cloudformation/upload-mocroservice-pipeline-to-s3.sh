#!/bin/bash

aws s3 cp microservice-pipeline.yaml s3://wixit-auth-webhooks-cloudformation-templates
aws s3 cp microservice-pipeline-params-without-variables.json s3://wixit-auth-webhooks-cloudformation-templates
