#!/bin/bash

set -e

STACK_NAME="FlaskLambdaPipelineStack"
REGION="ap-south-1"

echo "Deploying with following values"
echo "==============================="
echo "Stack name                   : $STACK_NAME"
echo "Region                       : $REGION"
echo ""

sam build
sam deploy --stack-name $STACK_NAME --region $REGION --capabilities CAPABILITY_IAM --resolve-s3

