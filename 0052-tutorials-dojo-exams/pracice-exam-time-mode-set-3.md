# TUTORIALS DOJO - Practice Exam - Time-mode Set 3

- Scored: 46/65 (70.77%)
  - SAA – Design Cost-Optimized Architectures: 55.56%
  - SAA – Design High-Performing Architectures: 71.43%
  - SAA – Design Resilient Architectures: 72.22%
  - SAA – Design Secure Architectures: 76.47%
- Time: 00:56:51
- Date: Oct 21, 2023

## SAA - Design Cost-Optimized Architectures

### 2

```
A solutions architect is managing an application that runs on a Windows EC2 instance with an attached Amazon FSx for Windows File Server. To save cost, management has decided to stop the instance during off-hours and restart it only when needed. It has been observed that the application takes several minutes to become fully operational which impacts productivity.

How can the solutions architect speed up the instance’s loading time without driving the cost up?

- Migrate the application to a Linux-based EC2 instance.
- Migrate the application to an EC2 instance with hibernation enabled.
- Enable the hibernation mode on the EC2 instance.
- Disable the Instance Metadata Service to reduce the things that need to be loaded at startup.
```

> EC2 - Hibernation
>
> - Quickly pausing and resuming the instances, by saving the memory footprint to disk.
> - Can only be enable at launch
> - Pay as stopped instances:
>   - No hourly charging
>   - EBS volume.
>   - Elastic IP Address.

### 7

```
In Amazon EC2, you can manage your instances from the moment you launch them up to their termination. You can flexibly control your computing costs by changing the EC2 instance state.

Which of the following statements is true regarding EC2 billing? (Select TWO.)

- You will be billed when your On-Demand instance is in pending state.
- You will be billed when your Spot instance is preparing to stop with a stopping state.
- You will be billed when your On-Demand instance is preparing to hibernate with a stopping state.
- You will be billed when your Reserved instance is in terminated state.
- You will not be billed for any instance usage while an instance is not in the running state.
```

> EC2 states:
>
> - pending
> - running 💸
>   - rebooting
>   - stopping - stopped (EBS-backed instances)
>     - hibernate 💸
> - shutting-down
> - terminated (Terminated Reserver Instances are still billed 💸)

### 8

```
A company has established a dedicated network connection from its on-premises data center to AWS Cloud using AWS Direct Connect (DX). The core network services, such as the Domain Name System (DNS) service and Active Directory services, are all hosted on-premises. The company has new AWS accounts that will also require consistent and dedicated access to these network services.

Which of the following can satisfy this requirement with the LEAST amount of operational overhead and in a cost-effective manner?

- Set up another Direct Connect connection for each and every new AWS account that will be added.
- Set up a new Direct Connect gateway and integrate it with the existing Direct Connect connection. Configure a VPC peering connection between AWS accounts and associate it with Direct Connect gateway.
- Create a new AWS VPN CloudHub. Set up a Virtual Private Network (VPN) connection for additional AWS accounts.
- Create a new Direct Connect gateway and integrate it with the existing Direct Connect connection. Set up a Transit Gateway between AWS accounts and associate it with the Direct Connect gateway.
```

> Transit Gateway & Direct Connect Gateway???

> Direct Connect connection/gateway???

> VPN traverses the public internet, doesn't use a dedicated connection

### 9

```
A company is hosting an application on EC2 instances that regularly pushes and fetches data in Amazon S3. Due to a change in compliance, the instances need to be moved on a private subnet. Along with this change, the company wants to lower the data transfer costs by configuring its AWS resources.

How can this be accomplished in the MOST cost-efficient manner?

- Set up a NAT Gateway in the public subnet to connect to Amazon S3.
- Create an Amazon S3 interface endpoint to enable a connection between the instances and Amazon S3.
- Create an Amazon S3 gateway endpoint to enable a connection between the instances and Amazon S3.
- Set up an AWS Transit Gateway to access Amazon S3.
```

> VPC endpoints for S3: Provide _private_ access to AWS Public services (S3)
>
> - Gateway endpoint:
>
>   - via Route Table's **Prefix List**, without IGW, NATGW, PrivateLink
>
>   - Free
>
> - Interface endpoint:
>
>   - via DNS using Private IP Address 👉 more features
>
>     - access from on-premises
>     - access from VPC in another AWS Region (using VPC Peering, Transit Gateway)
>
>   - Billed 💸

## SAA - Design High-Performing Architectures

### 3

```
A data analytics company is setting up an innovative checkout-free grocery store. Their Solutions Architect developed a real-time monitoring application that uses smart sensors to collect the items that the customers are getting from the grocery’s refrigerators and shelves then automatically deduct it from their accounts. The company wants to analyze the items that are frequently being bought and store the results in S3 for durable storage to determine the purchase behavior of its customers.

What service must be used to easily capture, transform, and load streaming data into Amazon S3, Amazon OpenSearch Service, and Splunk?

- Amazon Kinesis Data Firehose
- Amazon DynamoDB Streams
- Amazon Redshift
- Amazon SQS
```

> Amazon Kinesis Data Firehose: Load data streams into AWS data stores.

> Amazon Athena: Query data in Amazon S3 using SQL

> Amazon Redshift: Fast, simple, cost-effective data warehouse service

### 6

```
A large financial firm in the country has an AWS environment that contains several Reserved EC2 instances hosting a web application that has been decommissioned last week. To save costs, you need to stop incurring charges for the Reserved instances as soon as possible.

What cost-effective steps will you take in this circumstance? (Select TWO.)

- Stop the Reserved instances as soon as possible.
- Contact AWS to cancel your AWS subscription.
- Go to the AWS Reserved Instance Marketplace and sell the Reserved instances.
- Terminate the Reserved instances as soon as possible to avoid getting billed at the on-demand price when it expires.
- Go to the Amazon.com online shopping website and sell the Reserved instances.
```

> EC2 - Reserved Instance
>
> Reserved Instance Marketplace: Resell unused Standard Reserved Instances

> EC2 - Stop Instance vs Terminate Instance
>
> - Stopped: still be billed
> - Terminated: not billed

### 15

```
An on-premises server uses an SMB network file share to store application data. The application produces around 50 MB of data per day, but it only needs to access some of it for daily processes. To save on storage costs, the company plans to copy all the application data to AWS, however, they want to retain the ability to retrieve data with the same low-latency access as the local file share. The company does not have the capacity to develop the needed tool for this operation.

Which AWS service should the company use?

- AWS Virtual Private Network (VPN)
- Amazon FSx for Windows File Server
- AWS Snowball Edge
- AWS Storage Gateway
```

> NFS vs Storage Gateway
>
> - NFS: files are stored on AWS -> high-latency
> - Storage Gateway - File: low-latency

### 17

```
A Data Analyst in a financial company is tasked to provide insights on stock market trends to the company's clients. The company uses AWS Glue extract, transform, and load (ETL) jobs in daily report generation, which involves fetching data from an Amazon S3 bucket. The analyst discovered that old data from previous runs were being reprocessed, causing the jobs to take longer to complete.

Which solution would resolve the issue in the most operationally efficient way?

- Increase the size of the dataset used in the job to speed up the extraction and analysis process.
- Parallelize the job by splitting the dataset into smaller partitions and processing them simultaneously using multiple EC2 instances.
- Create a Lambda function that removes any data already processed. Then, use Amazon EventBridge (Amazon CloudWatch Events) to trigger this function whenever the ETL job's status switches to SUCCEEDED.
- Enable job bookmark for the ETL job.
```

> AWS Glue - Job Bookmarking
>
> - maintain state information and prevent the reprocessing of old data.

### 20

```
A company is deploying a Microsoft SharePoint Server environment on AWS using CloudFormation. The Solutions Architect needs to install and configure the architecture that is composed of Microsoft Active Directory (AD) domain controllers, Microsoft SQL Server 2012, multiple Amazon EC2 instances to host the Microsoft SharePoint Server and many other dependencies. The Architect needs to ensure that the required components are properly running before the stack creation proceeds.

Which of the following should the Architect do to meet this requirement?

- Configure the DependsOn attribute in the CloudFormation template. Send a success signal after the applications are installed and configured using the cfn-init helper script.
- Configure a UpdatePolicy attribute to the instance in the CloudFormation template. Send a success signal after the applications are installed and configured using the cfn-signal helper script.
- Configure the UpdateReplacePolicy attribute in the CloudFormation template. Send a success signal after the applications are installed and configured using the cfn-signal helper script.
- Configure a CreationPolicy attribute to the instance in the CloudFormation template. Send a success signal after the applications are installed and configured using the cfn-signal helper script.
```

> CloudFormation: CreationPolicy & cfn-signal
>
> - CreationPolicy: Wait on resource configuration actions before stack creation proceeds.
> - cfn-signal: Signals CloudFormation to indicate whether Amazon EC2 instances have been successfully created/updated

### 21

```
A solutions architect is in charge of preparing the infrastructure for a serverless application. The application is built from a Docker image pulled from an Amazon Elastic Container Registry (ECR) repository. It is compulsory that the application has access to 5 GB of ephemeral storage.

Which action satisfies the requirements?

- Deploy the application to an Amazon ECS cluster that uses Fargate tasks.
- Deploy the application in a Lambda function with Container image support. Set the function’s storage to 5 GB.
- Deploy the application in a Lambda function with Container image support. Attach an Amazon Elastic File System (EFS) volume to the function.
- Deploy the application Amazon ECS cluster with EC2 worker nodes and attach a 5 GB Amazon EBS volume.
```

> AWS Fargate: Serverless compute for containers
>
> By default, Fargate tasks are given a minimum of 20 GiB of free ephemeral storage

## SAA - Design Resilient Architectures

### 2

```
A tech startup is launching an on-demand food delivery platform using Amazon ECS cluster with an AWS Fargate serverless compute engine and Amazon Aurora. It is expected that the database read queries will significantly increase in the coming weeks ahead. A Solutions Architect recently launched two Read Replicas to the database cluster to improve the platform's scalability.

Which of the following is the MOST suitable configuration that the Architect should implement to load balance all of the incoming read requests equally to the two Read Replicas?

- Use the built-in Reader endpoint of the Amazon Aurora database.
- Use the built-in Cluster endpoint of the Amazon Aurora database.
- Enable Amazon Aurora Parallel Query.
- Create a new Network Load Balancer to evenly distribute the read queries to the Read Replicas of the Amazon Aurora database.
```

> Aurora - Reader endpoint:
>
> - A reader endpoint for an Aurora DB cluster provides load-balancing support for read-only connections to the DB cluster

### 7

```
An online registration system hosted in an Amazon EKS cluster stores data to a db.t4g.medium Amazon Aurora DB cluster. The database performs well during regular hours but is unable to handle the traffic surge that occurs during flash sales. A solutions architect must move the database to Aurora Serverless while minimizing downtime and the impact on the operation of the application.

Which change should be taken to meet the objective?

- Use AWS Database Migration Service (AWS DMS) to migrate to a new Aurora Serverless database.
- Change the Aurora Instance class to Serverless
- Take a snapshot of the DB cluster. Use the snapshot to create a new Aurora DB cluster.
- Add an Aurora Replica to the cluster and set its instance class to Serverless. Failover to the read replica and promote it to primary.
```

> Aurora Serverless
>
> - The DB instance cannot be changed from Provisioned to Serverless after created.
>
> - After the DB instanced is created, need to use AWS Database Migration Service (AWS DMS) to migrate data from the existing DB cluster to a new Aurora Serverless database.

### 8

```
An online stocks trading application that stores financial data in an S3 bucket has a lifecycle policy that moves older data to Glacier every month. There is a strict compliance requirement where a surprise audit can happen at anytime and you should be able to retrieve the required data in under 15 minutes under all circumstances. Your manager instructed you to ensure that retrieval capacity is available when you need it and should handle up to 150 MB/s of retrieval throughput.

Which of the following should you do to meet the above requirement? (Select TWO.)

- Retrieve the data using Amazon Glacier Select.
- Use Expedited Retrieval to access the financial data.
- Use Bulk Retrieval to access the financial data.
- Specify a range, or portion, of the financial data archive to retrieve.
- Purchase provisioned retrieval capacity.
```

> S3 - Read data from Glacier
>
> - Bulk: Lowest (5-12 hours), cheapest
> - Standard: 3-5 hours
> - Expedited: Fastest (1-5 mins)
>   - Buy Provisioned capacity to ensure Expedited retrievals is available.

> Amazon Glacier Select: Filter objects using SQL

### 14

```
A FinTech startup deployed an application on an Amazon EC2 instance with attached Instance Store volumes and an Elastic IP address. The server is only accessed from 8 AM to 6 PM and can be stopped from 6 PM to 8 AM for cost efficiency using Lambda with the script that automates this based on tags.

Which of the following will occur when the EC2 instance is stopped and started? (Select TWO.)

- The underlying host for the instance is possibly changed.
- The ENI (Elastic Network Interface) is detached.
- All data on the attached instance-store devices will be lost.
- The Elastic IP address is disassociated with the instance.
- There will be no changes.
```

> EC2 - Instance store:
>
> - Its data will be lost if the EC2 instance is stopped / terminated.

> EC2 - Elastic IP address and EBS storage won't be effect after an instance is stopped.

### 18

```
An aerospace engineering company recently adopted a hybrid cloud infrastructure with AWS. One of the Solutions Architect’s tasks is to launch a VPC with both public and private subnets for their EC2 instances as well as their database instances.

Which of the following statements are true regarding Amazon VPC subnets?
(Select TWO.)

- EC2 instances in a private subnet can communicate with the Internet only if they have an Elastic IP.
- Each subnet maps to a single Availability Zone.
- The allowed block size in VPC is between a /16 netmask (65,536 IP addresses) and /27 netmask (32 IP addresses).
- Every subnet that you create is automatically associated with the main route table for the VPC.
- Each subnet spans to 2 Availability Zones.
```

> VPC supports CIDR blocks from /16 to /28

## SAA - Design Secure Architectures

### 2

```
A solutions architect is writing an AWS Lambda function that will process encrypted documents from an Amazon FSx for NetApp ONTAP file system. The documents are protected by an AWS KMS customer key. After processing the documents, the Lambda function will store the results in an S3 bucket with an Amazon S3 Glacier Flexible Retrieval storage class. The solutions architect must ensure that the files can be decrypted by the Lambda function.

Which action accomplishes the requirement?

- Attach the kms:decrypt permission to the Lambda function’s execution role. Add a statement to the AWS KMS key’s policy that grants the function’s execution role the kms:decrypt permission.
- Attach the kms:decrypt permission to the Lambda function’s resource policy. Add a statement to the AWS KMS key’s policy that grants the function’s resource policy ARN the kms:decrypt permission.
- Attach the kms:decrypt permission to the Lambda function’s execution role. Add a statement to the AWS KMS key’s policy that grants the function’s ARN the kms:decrypt permission.
- Attach the kms:decrypt permission to the Lambda function’s resource policy. Add a statement to the AWS KMS key’s policy that grants the function’s execution role the kms:decrypt permission.
```

> Allow an Lambda permission to use KMS:
>
> - Attach the kms:decrypt permission to the Lambda function’s `execution role`
> - Add a statement to the AWS KMS `key policy` that grants the function’s execution role the kms:decrypt permission.

### 10

```
A company that is rapidly growing in recent months has been in the process of setting up IAM users on its single AWS Account. A solutions architect has been tasked to handle the user management, which includes granting read-only access to users and denying permissions whenever an IAM user has no MFA setup. New users will be added frequently based on their respective departments.

Which of the following action is the MOST secure way to grant permissions to the new users?

- Launch an IAM Group for each department. Create an IAM Policy that enforces MFA authentication with the least privilege permission. Attach the IAM Policy to each IAM Group.
- Create a Service Control Policy (SCP) that enforces MFA authentication for each department. Add a trust relationship to every SCP and attach it to each IAM User.
- Create an IAM Role that enforces MFA authentication with the least privilege permission. Set up a corresponding IAM Group for each department. Attach the IAM Role to the IAM Groups.
- Set up IAM roles for each IAM user and associate a permissions boundary that defines the maximum permissions.
```

> IAM Group
>
> - Cannot attach an IAM Role to an IAM Group.

### 13

```
A company hosted a web application on a Linux Amazon EC2 instance in the public subnet that uses a non-default network ACL. The instance uses a default security group and has an attached Elastic IP address. The network ACL is configured to block all inbound and outbound traffic. The Solutions Architect must allow incoming traffic on port 443 to access the application from any source.

Which combination of steps will accomplish this requirement? (Select TWO.)

- In the Security Group, add a new rule to allow TCP connection on port 443 from source 0.0.0.0/0
- In the Network ACL, update the rule to allow both inbound and outbound TCP connection on port 443 from source 0.0.0.0/0 and to destination 0.0.0.0/0
- In the Security Group, create a new rule to allow TCP connection on port 443 to destination 0.0.0.0/0
- In the Network ACL, update the rule to allow outbound TCP connection on port 32768 - 65535 to destination 0.0.0.0/0
- In the Network ACL, update the rule to allow inbound TCP connection on port 443 from source 0.0.0.0/0 and outbound TCP connection on port 32768 - 65535 to destination 0.0.0.0/0
```

> VPC - NACL:
>
> - The client that initiates the request chooses the ephemeral port range.
> - In practice, to cover the different types of clients that might initiate traffic to public-facing instances in your VPC, you can open ephemeral ports 1024-65535.
>
> To turn on the connection to a service running on an instance, the associated network ACL must allow the following:
>
> - Inbound traffic on the port that the service is listening on
> - Outbound traffic to ephemeral ports

### 17

```
A company is generating confidential data that is saved on their on-premises data center. As a backup solution, the company wants to upload their data to an Amazon S3 bucket. In compliance with its internal security mandate, the encryption of the data must be done before sending it to Amazon S3. The company must spend time managing and rotating the encryption keys as well as controlling who can access those keys.

Which of the following methods can achieve this requirement? (Select TWO.)

- Set up Server-Side Encryption with keys stored in a separate S3 bucket.
- Set up Client-Side Encryption with a customer master key stored in AWS Key Management Service (AWS KMS).
- Set up Client-Side Encryption with Amazon S3 managed encryption keys.
- Set up Server-Side Encryption (SSE) with EC2 key pair.
- Set up Client-Side Encryption using a client-side master key.
```

> S3 Object encryption:
>
> - Server-Side Encryption (SSE):
>
>   - SSE-S3 (Amazon S3 managed keys)
>   - SSE-KMS (AWS KMS)
>   - SSE-C (Customer-provided keys)
>
> - Client-Side Encryption (CSE):
>
>   - CSE-KMS-CMK
>   - CSE-Client Master key
