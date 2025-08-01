#!/bin/bash
set -e

# Update these
BUCKET_NAME="flask-lambda-artifacts-bucket"
REGION="ap-south-1"
STACK_NAME="FlaskLambdaPipelineStack"

echo "[1] Deploying pipeline..."
sam deploy \
  --template-file aws_code_pipeline.yaml \
  --config-env default \
  --region $REGION \
  --stack-name $STACK_NAME \
  --s3-bucket $BUCKET_NAME

echo "[✓] Pipeline deployed."
