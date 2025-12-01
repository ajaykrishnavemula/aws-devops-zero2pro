# ☁️ Day 01: Introduction to AWS

## Overview

Learn the fundamentals of cloud computing and get started with Amazon Web Services (AWS).

## Topics Covered

### 1. Cloud Computing Basics
- What is cloud computing?
- Public vs Private cloud
- Cloud service models (IaaS, PaaS, SaaS)
- Benefits of cloud computing

### 2. Why AWS?
- AWS market leadership
- Global infrastructure
- Service breadth and depth
- Cost advantages
- Innovation and reliability

### 3. AWS Core Services
- **Compute:** EC2, Lambda, ECS, EKS
- **Storage:** S3, EBS, EFS
- **Database:** RDS, DynamoDB, Aurora
- **Networking:** VPC, Route 53, CloudFront
- **Security:** IAM, KMS, Secrets Manager

### 4. AWS Management Console
- Console navigation
- Service categories
- Search and favorites
- Resource groups
- Billing dashboard

### 5. AWS Account Setup
- Creating an AWS account
- Free tier benefits
- Billing alerts
- MFA setup
- Root account best practices

## Getting Started

### Create Your AWS Account

1. Visit [AWS Free Tier](https://aws.amazon.com/free/)
2. Click "Create a Free Account"
3. Provide email and account name
4. Enter payment information (required but won't be charged for free tier)
5. Verify identity
6. Choose support plan (Basic - Free)

### Secure Your Account

```bash
# Enable MFA for root account
1. Sign in to AWS Console
2. Click account name → Security Credentials
3. Activate MFA
4. Choose virtual MFA device
5. Scan QR code with authenticator app
6. Enter two consecutive MFA codes
```

### Set Up Billing Alerts

```bash
# Create billing alarm
1. Go to CloudWatch
2. Create Alarm
3. Select Billing metric
4. Set threshold (e.g., $10)
5. Configure SNS notification
6. Create alarm
```

## AWS Free Tier

### Always Free Services
- **Lambda:** 1 million requests/month
- **DynamoDB:** 25 GB storage
- **SNS:** 1 million publishes
- **CloudWatch:** 10 custom metrics

### 12 Months Free
- **EC2:** 750 hours/month (t2.micro)
- **S3:** 5 GB standard storage
- **RDS:** 750 hours/month (db.t2.micro)
- **CloudFront:** 50 GB data transfer

## Key Concepts

### Regions and Availability Zones
- **Region:** Geographic area (e.g., us-east-1)
- **Availability Zone:** Isolated data center within region
- **Edge Location:** CDN endpoint for CloudFront

### AWS Global Infrastructure
- 30+ Regions worldwide
- 90+ Availability Zones
- 400+ Edge Locations
- Low latency global reach

## Best Practices

1. **Never use root account** for daily tasks
2. **Enable MFA** on all accounts
3. **Use IAM users** with least privilege
4. **Set up billing alerts** immediately
5. **Choose nearest region** for low latency
6. **Tag all resources** for cost tracking
7. **Review security** regularly

## Hands-on Exercise

### Exercise 1: Explore AWS Console
1. Sign in to AWS Console
2. Explore different service categories
3. Check your region selection
4. Review billing dashboard
5. Set up billing alert

### Exercise 2: AWS Calculator
1. Visit [AWS Pricing Calculator](https://calculator.aws/)
2. Estimate cost for:
   - 2 EC2 t2.micro instances
   - 10 GB S3 storage
   - 1 RDS db.t2.micro instance
3. Compare costs across regions

## Resources

- 📚 [AWS Documentation](https://docs.aws.amazon.com/)
- 🎓 [AWS Training](https://aws.amazon.com/training/)
- 💰 [AWS Pricing](https://aws.amazon.com/pricing/)
- 🆓 [AWS Free Tier](https://aws.amazon.com/free/)
- 📊 [AWS Architecture Center](https://aws.amazon.com/architecture/)

## Next Steps

After completing this module:
- ✅ AWS account created and secured
- ✅ Billing alerts configured
- ✅ Console navigation understood
- ✅ Core services identified

**Next Module:** [Day 02 - IAM](../02-iam-identity-access-management/) →

---

## Notes

- Keep your root account credentials secure
- Review AWS Free Tier limits regularly
- Explore AWS documentation for each service
- Join AWS community forums for support