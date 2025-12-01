#!/bin/bash

# CloudFormation deployment commands

# 1. Create VPC Stack
echo "Creating VPC Stack..."
aws cloudformation create-stack \
  --stack-name dev-vpc-stack \
  --template-body file://vpc-template.yaml \
  --parameters ParameterKey=EnvironmentName,ParameterValue=Dev

# Wait for VPC stack to complete
echo "Waiting for VPC stack creation..."
aws cloudformation wait stack-create-complete --stack-name dev-vpc-stack

# 2. Create EC2 Instance Stack
echo "Creating EC2 Instance Stack..."
aws cloudformation create-stack \
  --stack-name dev-webserver-stack \
  --template-body file://ec2-instance.yaml \
  --parameters \
    ParameterKey=InstanceType,ParameterValue=t2.micro \
    ParameterKey=KeyName,ParameterValue=your-key-name

# Wait for EC2 stack to complete
echo "Waiting for EC2 stack creation..."
aws cloudformation wait stack-create-complete --stack-name dev-webserver-stack

# 3. Get stack outputs
echo "Getting stack outputs..."
aws cloudformation describe-stacks \
  --stack-name dev-webserver-stack \
  --query 'Stacks[0].Outputs'

# 4. Update stack (if needed)
# aws cloudformation update-stack \
#   --stack-name dev-webserver-stack \
#   --template-body file://ec2-instance.yaml \
#   --parameters ParameterKey=InstanceType,ParameterValue=t2.small

# 5. Delete stacks (cleanup)
# aws cloudformation delete-stack --stack-name dev-webserver-stack
# aws cloudformation delete-stack --stack-name dev-vpc-stack

# 6. Validate template before deployment
echo "Validating templates..."
aws cloudformation validate-template --template-body file://vpc-template.yaml
aws cloudformation validate-template --template-body file://ec2-instance.yaml

# 7. List all stacks
echo "Listing all stacks..."
aws cloudformation list-stacks --stack-status-filter CREATE_COMPLETE UPDATE_COMPLETE

# 8. Describe stack events
# aws cloudformation describe-stack-events --stack-name dev-webserver-stack

# Made with Bob
