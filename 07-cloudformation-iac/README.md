# 📜 Day 11: CloudFormation - Infrastructure as Code

## Overview

Learn to automate AWS infrastructure provisioning using CloudFormation templates.

## Topics Covered

- CloudFormation basics and concepts
- Template structure (YAML/JSON)
- Resources, parameters, and outputs
- Stacks and stack sets
- Change sets and drift detection
- Best practices for IaC

## Template Structure

```yaml
AWSTemplateFormatVersion: '2010-09-09'
Description: 'Sample CloudFormation Template'

Parameters:
  InstanceType:
    Type: String
    Default: t2.micro
    AllowedValues:
      - t2.micro
      - t2.small

Resources:
  MyEC2Instance:
    Type: AWS::EC2::Instance
    Properties:
      InstanceType: !Ref InstanceType
      ImageId: ami-0c55b159cbfafe1f0

Outputs:
  InstanceId:
    Description: Instance ID
    Value: !Ref MyEC2Instance
```

## Common Commands

```bash
# Create stack
aws cloudformation create-stack --stack-name my-stack --template-body file://template.yaml

# Update stack
aws cloudformation update-stack --stack-name my-stack --template-body file://template.yaml

# Delete stack
aws cloudformation delete-stack --stack-name my-stack

# Describe stack
aws cloudformation describe-stacks --stack-name my-stack
```

## Project

Create a CloudFormation template that provisions:
- VPC with public/private subnets
- EC2 instances
- Security groups
- Load balancer

**Previous:** ← [Day 10 - AWS CLI](../10-aws-cli/)  
**Next:** [Day 12 - CodeCommit](../12-codecommit/) →