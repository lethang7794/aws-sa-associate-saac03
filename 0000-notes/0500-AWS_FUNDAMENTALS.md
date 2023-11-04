# AWS FUNDAMENTALS

## AWS Public vs Private Services (7:04)

![Alt text](<images/Screenshot 2023-10-01 at 15.19.34 - [ASSOCIATESHARED]_AWS_Public_vs_Private_Services__.png>)

> How many network zones are there in AWS?
>
> 2:
>
> - 'AWS Public' Zone
> - 'AWS Private' Zone
>
> and the "Public Internet" Zone

> What is "Public Internet" Zone?

> What is "AWS Public" Zone?

> What is "AWS Private" Zone?

> How to access services in "AWS Private" Zone?

> How AWS Private services access services in "AWS Public" Zone?

> How can on-premise access "AWS Private" Zone?

## AWS Global Infrastructure (14:53)

![Alt text](<images/Screenshot 2023-10-01 at 15.24.39 - [ASSOCIATESHARED]_AWS_Global_Infrastructure__learn.png>)
AWS Regions vs Edge Locations

![Alt text](<images/Screenshot 2023-10-01 at 15.25.12 - [ASSOCIATESHARED]_AWS_Global_Infrastructure__learn.png>)

![Alt text](<images/Screenshot 2023-10-01 at 15.30.07 - [ASSOCIATESHARED]_AWS_Global_Infrastructure__learn.png>)
AWS Regions - Benefits

![Alt text](<images/Screenshot 2023-10-01 at 15.32.52 - [ASSOCIATESHARED]_AWS_Global_Infrastructure__learn.png>)
AWS Regions vs Availability Zones (AZs)

> AWS Region Code vs Region Name
>
> | Region Code              | Region Name    |
> | ------------------------ | -------------- |
> | US East (N. Virginia)    | us-east-1      |
> | Asia Pacific (Singapore) | ap-southeast-1 |

> How many Data Centers can be in a AZ?

![Alt text](<images/Screenshot 2023-10-01 at 15.34.35 - [ASSOCIATESHARED]_AWS_Global_Infrastructure__learn.png>)
Service Resilient

| Resilient        | Example            |
| ---------------- | ------------------ |
| Global Resilient | IAM, Route 53      |
| Region Resilient | VPC, RDS Multi-AZ  |
| AZ Resilient     | EC2, RDS Single-AZ |

## AWS Default Virtual Private Cloud (VPC) (15:19)

![Alt text](<images/Screenshot 2023-10-01 at 15.49.39 - [ASSOCIATESHARED]_AWS_Default_Virtual_Private_Clou.png>)
VPC Basics

> What is a VPC?
>
> Virtual Private Cloud (VPC) is a virtual network inside AWS.
>
> How many types of VPC are there?
>
> There are 2 types of VPC: default VPC & custom VPC.

![Alt text](<images/Screenshot 2023-10-01 at 15.51.10 - [ASSOCIATESHARED]_AWS_Default_Virtual_Private_Clou.png>)

> What is the default state of a VPC?
>
> By default,a VPC is private and isolated

![Alt text](<images/Screenshot 2023-10-01 at 15.53.16 - [ASSOCIATESHARED]_AWS_Default_Virtual_Private_Clou.png>)

![Alt text](<images/Screenshot 2023-10-01 at 15.55.23 - [ASSOCIATESHARED]_AWS_Default_Virtual_Private_Clou.png>)

> What is the default VPC?
>
> The VPC that AWS created automatically for each region.

> Can we delete the default VPC?
>
> We can delete the default VPC, and re-create in the Web Console.

> What is the CIDR of default VPC?
>
> 172.31.0.0/16 👉 65535 IPs 👉 16 subnets of /20

> For the default VPC, how many subnets are there in each AZ in each region?
>
> The default VPC has 1 subnet for each of its AZ.
>
> They are /20 subnets - 4091 (2^12) available IPs

[x] TODO: DEMO - Delete and create default VPC

## Elastic Compute Cloud (EC2) Basics (14:46)

![Alt text](<images/Screenshot 2023-10-01 at 16.21.17 - [ASSOCIATESHARED]_AWS_Default_Virtual_Private_Clou.png>)
EC2 Features

![Alt text](<images/Screenshot 2023-10-01 at 16.23.53 - [ASSOCIATESHARED]_AWS_Default_Virtual_Private_Clou.png>)
EC2 - Instance Lifecycle

![Alt text](<images/Screenshot 2023-10-01 at 16.26.14 - [ASSOCIATESHARED]_AWS_Default_Virtual_Private_Clou.png>)
EC2 - AMI

![Alt text](<images/Screenshot 2023-10-01 at 16.28.34 - [ASSOCIATESHARED]_AWS_Default_Virtual_Private_Clou.png>)
EC2 - Connecting to EC2

TODO: DEMO - Connect to an EC2 instance

## [_DEMO_] My First EC2 Instance - PART1 (10:58)

## [_DEMO_] My First EC2 Instance - PART2 (9:40)

## Simple Storage Service (S3) Basics (15:48)

![Alt text](<images/Screenshot 2023-10-01 at 17.21.31 - [ASSOCIATESHARED]Simple_Storage_Service_(S3)_Basic.png>)
S3 - 101

> What is the resilient of S3?

![Alt text](<images/Screenshot 2023-10-01 at 17.23.05 - [ASSOCIATESHARED]Simple_Storage_Service_(S3)_Basic.png>)
S3 - Objects

> What is S3 object?

![Alt text](<images/Screenshot 2023-10-01 at 17.25.57 - [ASSOCIATESHARED]Simple_Storage_Service_(S3)_Basic.png>)
S3 - Buckets

> What is S3 bucket?
>
> What is the structure of S3 bucket?

![Alt text](<images/Screenshot 2023-10-01 at 17.27.50 - [ASSOCIATESHARED]Simple_Storage_Service_(S3)_Basic.png>)
S3 - Summary

> What is the limit of S3 object?
>
> What is the limit of S3 bucket?

![Alt text](<images/Screenshot 2023-10-01 at 17.29.27 - [ASSOCIATESHARED]Simple_Storage_Service_(S3)_Basic.png>)
S3 - Pattern & Anti-pattern

> What is the type of S3 store?

## [_DEMO_] My First S3 Bucket (18:34)

TODO: DEMO - S3

## CloudFormation (CFN) Basics (12:28)

![Alt text](<images/Screenshot 2023-10-01 at 17.55.51 - [ASSOCIATESHARED]_CloudFormation_(CFN)_Basics__lea.png>)
CFN - Template Format

![Alt text](<images/Screenshot 2023-10-01 at 17.57.01 - [ASSOCIATESHARED]_CloudFormation_(CFN)_Basics__lea.png>)
CFN Template - Resources

![Alt text](<images/Screenshot 2023-10-01 at 17.57.46 - [ASSOCIATESHARED]_CloudFormation_(CFN)_Basics__lea.png>)
CFN Template - Descriptions

![Alt text](<images/Screenshot 2023-10-01 at 17.58.28 - [ASSOCIATESHARED]_CloudFormation_(CFN)_Basics__lea.png>)
CFN Template - Metadata

![Alt text](<images/Screenshot 2023-10-01 at 17.59.02 - [ASSOCIATESHARED]_CloudFormation_(CFN)_Basics__lea.png>)
CFN Template - Parameters

![Alt text](<images/Screenshot 2023-10-01 at 17.59.31 - [ASSOCIATESHARED]_CloudFormation_(CFN)_Basics__lea.png>)
CFN Template - Mappings

![Alt text](<images/Screenshot 2023-10-01 at 18.00.08 - [ASSOCIATESHARED]_CloudFormation_(CFN)_Basics__lea.png>)
CFN Template - Conditions

![Alt text](<images/Screenshot 2023-10-01 at 18.00.42 - [ASSOCIATESHARED]_CloudFormation_(CFN)_Basics__lea.png>)
CFN Template - Outputs

![Alt text](<images/Screenshot 2023-10-01 at 18.02.21 - [ASSOCIATESHARED]_CloudFormation_(CFN)_Basics__lea.png>)
CFN - Stack, Logical Resource, Physical Resource

![Alt text](<images/Screenshot 2023-10-01 at 18.03.11 - [ASSOCIATESHARED]_CloudFormation_(CFN)_Basics__lea.png>)
CFN - Create/Update/Delete Stack

## [_DEMO_] Simple Automation With CloudFormation (CFN) (15:52)

## CloudWatch (CW) Basics (13:45)

![Alt text](<images/Screenshot 2023-10-01 at 18.48.13 - [ASSOCIATESHARED]_[DEMO]_Simple_Automation_With_Cl.png>)
CloudWatch - Metrics, CloudWatch Logs/Events

![Alt text](<images/Screenshot 2023-10-01 at 18.48.59 - [ASSOCIATESHARED]_[DEMO]_Simple_Automation_With_Cl.png>)
CloudWatch - Architecture

![Alt text](<images/Screenshot 2023-10-01 at 18.50.30 - [ASSOCIATESHARED]_[DEMO]_Simple_Automation_With_Cl.png>)
CloudWatch - Namespace

![Alt text](<images/Screenshot 2023-10-01 at 18.51.16 - [ASSOCIATESHARED]_[DEMO]_Simple_Automation_With_Cl.png>)
CloudWatch - Metric

> What is metric?

![Alt text](<images/Screenshot 2023-10-01 at 18.52.08 - [ASSOCIATESHARED]_[DEMO]_Simple_Automation_With_Cl.png>)
CloudWatch - Datapoint

> What is datapoint?

![Alt text](<images/Screenshot 2023-10-01 at 18.53.11 - [ASSOCIATESHARED]_[DEMO]_Simple_Automation_With_Cl.png>)
CloudWatch - Dimension

> What is dimension?

![Alt text](<images/Screenshot 2023-10-01 at 18.54.26 - [ASSOCIATESHARED]_[DEMO]_Simple_Automation_With_Cl.png>)
CloudWatch - Alarm

## [Demo] Simple Monitoring with Cloudwatch (15:31)

## Shared Responsibility Model (6:20)

![Alt text](<images/Screenshot 2023-10-02 at 10.29.17 - [ASSOCIATESHARED]_Shared_Responsibility_Model__lea.png>)
Infrastructure Stack

![Alt text](<images/Screenshot 2023-10-02 at 10.31.45 - [ASSOCIATESHARED]_Shared_Responsibility_Model__lea .png>)
AWS: responsibility for security OF the cloud

![Alt text](<images/Screenshot 2023-10-02 at 10.31.46 - [ASSOCIATESHARED]_Shared_Responsibility_Model__lea.png>)
CUSTOMER: responsibility for security IN the cloud

## High-Availability vs Fault-Tolerance vs Disaster Recovery (17:21)

![Alt text](<images/Screenshot 2023-10-02 at 10.37.43 - [ASSOCIATESHARED]_High-Availability_vs_Fault-Toler.png>)
High-Availability (HA)

![Alt text](<images/Screenshot 2023-10-02 at 10.41.03 - [ASSOCIATESHARED]_High-Availability_vs_Fault-Toler.png>)
Fault-Tolerance (FT)

![Alt text](<images/Screenshot 2023-10-02 at 10.43.55 - [ASSOCIATESHARED]_High-Availability_vs_Fault-Toler.png>)
Disaster-Recovery (DR)

![Alt text](<images/Screenshot 2023-10-02 at 10.45.12 - [ASSOCIATESHARED]_High-Availability_vs_Fault-Toler.png>)
HA - FT - DR

> HA: HA environment has a minimal service interruption.
> FT: FT environment has no service interruption but a significantly higher cost.

## Route53 (R53) Fundamentals (6:29)

![Alt text](<images/Screenshot 2023-10-02 at 10.52.52 - [ASSOCIATESHARED]_Route53_(R53)_Fundamentals__lear.png>)
Route 53 - Features

![Alt text](<images/Screenshot 2023-10-02 at 10.54.29 - [ASSOCIATESHARED]_Route53_(R53)_Fundamentals__lear.png>)
Route 53 - Register Domains

![Alt text](<images/Screenshot 2023-10-02 at 10.56.18 - [ASSOCIATESHARED]_Route53_(R53)_Fundamentals__lear.png>)
Route 53 - Hosted Zones

## [_DEMO_] Registering a Domain with route53 (9:49)

## DNS Record Types (13:25)

![Alt text](<images/Screenshot 2023-10-02 at 11.11.13 - [ASSOCIATESHARED]_DNS_Record_Types__learn.cantrill.png>)
DNS Record - Nameserver (NS) Record

![Alt text](<images/Screenshot 2023-10-02 at 11.12.11 - [ASSOCIATESHARED]_DNS_Record_Types__learn.cantrill.png>)
DNS Record - A and AAAA Record

![Alt text](<images/Screenshot 2023-10-02 at 11.13.29 - [ASSOCIATESHARED]_DNS_Record_Types__learn.cantrill.png>)
DNS Record - CNAME Record

![Alt text](<images/Screenshot 2023-10-02 at 11.15.38 - [ASSOCIATESHARED]_DNS_Record_Types__learn.cantrill.png>)
DNS Record - MX Record

![Alt text](<images/Screenshot 2023-10-02 at 11.16.54 - [ASSOCIATESHARED]_DNS_Record_Types__learn.cantrill.png>)
DNS Record - TXT Record

![Alt text](<images/Screenshot 2023-10-02 at 11.20.14 - [ASSOCIATESHARED]_DNS_Record_Types__learn.cantrill.png>)
DNS Record - Time To Live (TTL)

## Fundamentals Section Quiz
