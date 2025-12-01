#!/bin/bash

# AWS CLI Essential Commands for Beginners

# ============================================
# 1. AWS CONFIGURATION
# ============================================

# Configure AWS CLI with credentials
aws configure
# Enter: Access Key ID, Secret Access Key, Region (us-east-1), Output format (json)

# View current configuration
aws configure list

# Set specific profile
aws configure --profile dev-user

# ============================================
# 2. IAM (Identity and Access Management)
# ============================================

# List IAM users
aws iam list-users

# Create IAM user
aws iam create-user --user-name john-doe

# List IAM groups
aws iam list-groups

# Get current user identity
aws sts get-caller-identity

# ============================================
# 3. EC2 (Elastic Compute Cloud)
# ============================================

# List all EC2 instances
aws ec2 describe-instances

# List running instances only
aws ec2 describe-instances --filters "Name=instance-state-name,Values=running"

# Start an instance
aws ec2 start-instances --instance-ids i-1234567890abcdef0

# Stop an instance
aws ec2 stop-instances --instance-ids i-1234567890abcdef0

# Create key pair
aws ec2 create-key-pair --key-name MyKeyPair --query 'KeyMaterial' --output text > MyKeyPair.pem

# List security groups
aws ec2 describe-security-groups

# ============================================
# 4. S3 (Simple Storage Service)
# ============================================

# List all S3 buckets
aws s3 ls

# Create S3 bucket
aws s3 mb s3://my-unique-bucket-name-12345

# Upload file to S3
aws s3 cp myfile.txt s3://my-bucket-name/

# Download file from S3
aws s3 cp s3://my-bucket-name/myfile.txt ./

# Sync directory to S3
aws s3 sync ./local-folder s3://my-bucket-name/remote-folder

# List bucket contents
aws s3 ls s3://my-bucket-name/

# Delete S3 bucket (must be empty)
aws s3 rb s3://my-bucket-name

# ============================================
# 5. VPC (Virtual Private Cloud)
# ============================================

# List VPCs
aws ec2 describe-vpcs

# List subnets
aws ec2 describe-subnets

# List route tables
aws ec2 describe-route-tables

# List internet gateways
aws ec2 describe-internet-gateways

# ============================================
# 6. CloudFormation
# ============================================

# List CloudFormation stacks
aws cloudformation list-stacks

# Create stack
aws cloudformation create-stack --stack-name my-stack --template-body file://template.yaml

# Describe stack
aws cloudformation describe-stacks --stack-name my-stack

# Delete stack
aws cloudformation delete-stack --stack-name my-stack

# ============================================
# 7. Lambda
# ============================================

# List Lambda functions
aws lambda list-functions

# Invoke Lambda function
aws lambda invoke --function-name my-function output.txt

# ============================================
# 8. CloudWatch
# ============================================

# List CloudWatch alarms
aws cloudwatch describe-alarms

# Get metric statistics
aws cloudwatch get-metric-statistics \
  --namespace AWS/EC2 \
  --metric-name CPUUtilization \
  --dimensions Name=InstanceId,Value=i-1234567890abcdef0 \
  --start-time 2024-01-01T00:00:00Z \
  --end-time 2024-01-01T23:59:59Z \
  --period 3600 \
  --statistics Average

# ============================================
# 9. RDS (Relational Database Service)
# ============================================

# List RDS instances
aws rds describe-db-instances

# Create DB snapshot
aws rds create-db-snapshot \
  --db-instance-identifier mydb \
  --db-snapshot-identifier mydb-snapshot

# ============================================
# 10. USEFUL TIPS
# ============================================

# Use --query to filter output
aws ec2 describe-instances --query 'Reservations[*].Instances[*].[InstanceId,State.Name,InstanceType]'

# Use --output for different formats (json, text, table)
aws ec2 describe-instances --output table

# Use --profile for multiple AWS accounts
aws s3 ls --profile production

# Dry run (test without executing)
aws ec2 run-instances --dry-run --image-id ami-12345678 --instance-type t2.micro

# Get help for any command
aws ec2 help
aws s3 cp help

# Made with Bob
