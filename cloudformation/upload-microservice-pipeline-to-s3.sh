#!/bin/bash

aws s3 cp microservice-pipeline.yaml s3://webhooks-configs-and-templates/wixit-auth-infrastructure/
aws s3 cp microservice-pipeline-params-without-variables.json s3://webhooks-configs-and-templates/wixit-auth-infrastructure/
