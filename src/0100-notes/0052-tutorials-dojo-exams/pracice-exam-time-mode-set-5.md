# TUTORIALS DOJO - Practice Exam - Time-mode Set 5

- Scored: 49/65 (75%)

  - SAA – Design Cost-Optimized Architectures: 100%
  - SAA – Design High-Performing Architectures: 73.08%
  - SAA – Design Resilient Architectures: 75%
  - SAA – Design Secure Architectures: 73.91%

- Time: 00:52:07
- Date: Oct 23, 2023, 15h

## SAA - Design Cost-Optimized Architectures

## SAA - Design High-Performing Architectures

### 1

```
A Solutions Architect is migrating several Windows-based applications to AWS that require a scalable file system storage for high-performance computing (HPC). The storage service must have full support for the SMB protocol and Windows NTFS, Active Directory (AD) integration, and Distributed File System (DFS).

Which of the following is the MOST suitable storage service that the Architect should use to fulfill this scenario?

- Amazon FSx for Windows File Server
- Amazon S3 Glacier Deep Archive
- AWS DataSync
- Amazon FSx for Lustre
```

> [!NOTE] FSx
>
> - FSx for Lustre: Linux, HPC
> - FSx for Windows File Server

### 2

```
A company has a web application hosted in their on-premises infrastructure that they want to migrate to AWS cloud. Your manager has instructed you to ensure that there is no downtime while the migration process is on-going. In order to achieve this, your team decided to divert 50% of the traffic to the new application in AWS and the other 50% to the application hosted in their on-premises infrastructure. Once the migration is over and the application works with no issues, a full diversion to AWS will be implemented. The company's VPC is connected to its on-premises network via an AWS Direct Connect connection.

Which of the following are the possible solutions that you can implement to satisfy the above requirement? (Select TWO.)

- Use a Network Load balancer with Weighted Target Groups to divert the traffic between the on-premises and AWS-hosted application. Divert 50% of the traffic to the new application in AWS and the other 50% to the application hosted in their on-premises infrastructure.
- Use an Application Elastic Load balancer with Weighted Target Groups to divert and proportion the traffic between the on-premises and AWS-hosted application. Divert 50% of the traffic to the new application in AWS and the other 50% to the application hosted in their on-premises infrastructure.
- Use Route 53 with Failover routing policy to divert and proportion the traffic between the on-premises and AWS-hosted application. Divert 50% of the traffic to the new application in AWS and the other 50% to the application hosted in their on-premises infrastructure.
- Use Route 53 with Weighted routing policy to divert the traffic between the on-premises and AWS-hosted application. Divert 50% of the traffic to the new application in AWS and the other 50% to the application hosted in their on-premises infrastructure.
```

> [!NOTE] Application Load Balancer: supports Weighted Target Groups

### 5

```
A research institute has developed simulation software that requires significant computational power. Currently, the software runs on a local server with limited resources, taking several hours to complete each simulation. The server has 32 virtual CPUs (vCPUs) and 256 GiB of memory. The institute plans to migrate the software to AWS. Their objective is to speed up the simulations by running them in parallel.

As a Solutions Architect, which solution will achieve this goal with the LEAST operational overhead?

- Utilize AWS Batch to manage the execution of the software.
- Consider using Amazon EC2 Spot Instances to run the simulations.
- Use Lambda functions to process simulation tasks in parallel.
- Run the simulations using AWS Fargate.
```

> [!NOTE] AWS Batch: Run batch jobs at any scale

### 6

```
A company plans to implement a hybrid architecture. They need to create a dedicated connection from their Amazon Virtual Private Cloud (VPC) to their on-premises network. The connection must provide high bandwidth throughput and a more consistent network experience than Internet-based solutions.

Which of the following can be used to create a private connection between the VPC and the company's on-premises network?

- AWS Direct Connect
- Transit VPC
- Transit Gateway with equal-cost multipath routing (ECMP)
- AWS Site-to-Site VPN
```

> [!NOTE] AWS Direct Connect: Dedicated network connection to AWS

### 10

```
A healthcare company manages patient data using a distributed system. The organization utilizes a microservice-based serverless application to handle various aspects of patient care. Data has to be retrieved and written from multiple Amazon DynamoDB tables.

The primary goal is to enable efficient retrieval and writing of data without impacting the baseline performance of the application as well as ensuring seamless access to patient information for healthcare professionals.

Which of the following is the MOST operationally efficient solution?

- Utilize AWS AppSync pipeline resolvers
- Launched AWS Lambda functions with an edge-optimized Amazon API Gateway
- Set up DynamoDB connector for Amazon Athena Federated Query
- Use CloudFront function
```

> [!NOTE] AWS AppSync: Accelerate app development with fully-managed, scalable GraphQL APIs
>
> - AWS AppSync Pipeline Resolver: orchestrating requests to multiple data sources.
>
>   Simplify client-side application complexity and help enforce server-side business logic controls by

### 16

```
A company has multiple research departments that have deployed several resources to the AWS cloud. The departments are free to provision their own resources as they are needed. To ensure normal operations, the company wants to track its AWS resource usage so that it is not reaching the AWS service quotas unexpectedly.

Which combination of actions should the Solutions Architect implement to meet the company requirements? (Select TWO.)

- Create an Amazon Simple Notification Service (Amazon SNS) topic and configure it as a target for notifications.
- Capture the events using Amazon EventBridge (Amazon CloudWatch Events) and use an Amazon Simple Notification Service (Amazon SNS) topic as the target for notifications.
- Query the AWS Trusted Advisor Service Limits check every 24 hours by calling the DescribeTrustedAdvisorChecks API operation. Ensure that your AWS account has a Developer support plan.
- Write an AWS Lambda function that refreshes the AWS Trusted Advisor Service Limits checks and set it to run every 24 hours.
- Utilize the AWS managed rule on AWS Config to monitor AWS resource service quotas. Schedule this checking using an AWS Lambda function.
```

> [!NOTE] **AWS Trusted Advisor**: Optimize performance and security
>
> Trusted Advisor inspects your AWS environment and recommends ways to save money, close security gaps, and improve system availability and performance.
>
> - **AWS Trusted Advisor** _Service Limits_:
>   - Monitor the service quotas in all Regions.
>   - Alerts you if your account reaches _more than 80% of a service quota_ in any Region.

### 19

```
A company has multiple AWS Site-to-Site VPN connections placed between their VPCs and their remote network. During peak hours, many employees are experiencing slow connectivity issues, which limits their productivity. The company has asked a solutions architect to scale the throughput of the VPN connections.

Which solution should the architect carry out?

- Associate the VPCs to an Equal Cost Multipath Routing (ECMR)-enabled transit gateway and attach additional VPN tunnels.
- Add more virtual private gateways to a VPC and enable Equal Cost Multipath Routing (ECMR) to get higher VPN bandwidth.
- Modify the VPN configuration by increasing the number of tunnels to scale the throughput.
- Re-route some of the VPN connections to a secondary customer gateway device on the remote network’s end.
```

> [!NOTE] AWS Site-to-Site VPN throughput limit: 1.25 Gbps
>
> - Scale VPN with Transit Gateway - Equal Cost Multipath Routing (ECMP).
>
>   Establish _multiple VPN tunnels_ to an ECMP-enabled transit gateway

## SAA - Design Resilient Architectures

2

```
A company needs to accelerate the performance of its AI-powered medical diagnostic application by running its machine learning workloads on the edge of telecommunication carriers' 5G networks. The application must be deployed to a Kubernetes cluster and have role-based access control (RBAC) access to IAM users and roles for cluster authentication.

Which of the following should the Solutions Architect implement to ensure single-digit millisecond latency for the application?

- Launch the application to an Amazon Elastic Kubernetes Service (Amazon EKS) cluster. Create node groups in Wavelength Zones for the Amazon EKS cluster via the AWS Wavelength service. Apply the AWS authenticator configuration map (aws-auth ConfigMap) to your cluster.
- Host the application to an Amazon Elastic Kubernetes Service (Amazon EKS) cluster. Set up node groups in AWS Wavelength Zones for the Amazon EKS cluster. Attach the Amazon EKS connector agent role (AmazonECSConnectorAgentRole) to your cluster and use AWS Control Tower for RBAC access.
- Launch the application to an Amazon Elastic Kubernetes Service (Amazon EKS) cluster. Create VPC endpoints for the AWS Wavelength Zones and apply them to the Amazon EKS cluster. Install the AWS IAM Authenticator for Kubernetes (aws-iam-authenticator) to your cluster.
- Host the application to an Amazon EKS cluster and run the Kubernetes pods on AWS Fargate. Create node groups in AWS Wavelength Zones for the Amazon EKS cluster. Add the EKS pod execution IAM role (AmazonEKSFargatePodExecutionRole) to your cluster and ensure that the Fargate profile has the same IAM role as your Amazon EC2 node groups.

```

> [!NOTE] AWS Wavelength: Deliver ultra-low latency applications for 5G devices
>
> - Application traffic can reach application servers running in Wavelength Zones without leaving the mobile providers’ network

> [!NOTE] IAM and K8s:
>
> - Enable with _AWS IAM Authenticator for Kubernetes_, which runs on the Amazon EKS control plane.
> - The authenticator gets its configuration information from the aws-auth ConfigMap (AWS authenticator configuration map).

### 8

```

A top investment bank is in the process of building a new Forex trading platform. To ensure high availability and scalability, you designed the trading platform to use an Elastic Load Balancer in front of an Auto Scaling group of On-Demand EC2 instances across multiple Availability Zones. For its database tier, you chose to use a single Amazon Aurora instance to take advantage of its distributed, fault-tolerant, and self-healing storage system.

In the event of system failure on the primary database instance, what happens to Amazon Aurora during the failover?

- Amazon Aurora flips the canonical name record (CNAME) for your DB Instance to point at the healthy replica, which in turn is promoted to become the new primary.
- Aurora will attempt to create a new DB Instance in the same Availability Zone as the original instance and is done on a best-effort basis.
- Amazon Aurora flips the A record of your DB Instance to point at the healthy replica, which in turn is promoted to become the new primary.
- Aurora will first attempt to create a new DB Instance in a different Availability Zone of the original instance. If unable to do so, Aurora will attempt to create a new DB Instance in the original Availability Zone in which the instance was first launched.

```

> [!NOTE] Aurora Failover: Automatically handled by Amazon Aurora
>
> 1. If you have an Amazon Aurora Replica
>
>    Amazon Aurora flips the canonical name record (CNAME) for your DB Instance to point at the healthy replica
>
> 2. If you are running Aurora Serverless and the DB instance or AZ becomes unavailable
>
>    Aurora will automatically recreate the DB instance in a different AZ.
>
> 3. Otherwise:
>
>    Aurora will attempt to create a new DB Instance in the same Availability Zone as the original instance.
>
>    The replacement is done on a best-effort basis and may not succeed

### 12

```

A client is hosting their company website on a cluster of web servers that are behind a public-facing load balancer. The client also uses Amazon Route 53 to manage their public DNS.

How should the client configure the DNS zone apex record to point to the load balancer?###

```

## SAA - Design Secure Architectures

3

```

An application is hosted on an EC2 instance with multiple EBS Volumes attached and uses Amazon Neptune as its database. To improve data security, you encrypted all of the EBS volumes attached to the instance to protect the confidential data stored in the volumes.

Which of the following statements are true about encrypted Amazon Elastic Block Store volumes? (Select TWO.)

- All data moving between the volume and the instance are encrypted.
- Snapshots are automatically encrypted.
- Snapshots are not automatically encrypted.
- Only the data in the volume is encrypted and not all the data moving between the volume and the instance.
- The volumes created from the encrypted snapshot are not encrypted.

```

> [!NOTE] EBS Encryption
>
> - Data at rest inside the volume 👈 Encryption at rest
> - All data moving between the volume and the instance 👈 Encryption in-transit
> - All snapshots created from the volume
> - All volumes created from those snapshots

### 4

```

A company has a UAT and production EC2 instances running on AWS. They want to ensure that employees who are responsible for the UAT instances don't have access to work on the production instances to minimize security risks.

Which of the following would be the best way to achieve this?

- Launch the UAT and production EC2 instances in separate VPC's connected by VPC peering.
- Provide permissions to the users via the AWS Resource Access Manager (RAM) service to only access EC2 instances that are used for production or development.
- Launch the UAT and production instances in different Availability Zones and use Multi Factor Authentication.
- Define the tags on the UAT and production servers and add a condition to the IAM policy which allows access to specific tags.

```

> [!NOTE] Best practice to control access to EC2 instances:
>
> - Tag the EC2 instances, to categorize by purpose, owner, or environment...
> - Control access using resource tags and IAM policy.

### 10

```

A Solutions Architect is working for a fast-growing startup that just started operations during the past 3 months. They currently have an on-premises Active Directory and 10 computers. To save costs in procuring physical workstations, they decided to deploy virtual desktops for their new employees in a virtual private cloud in AWS. The new cloud infrastructure should leverage the existing security controls in AWS but can still communicate with their on-premises network.

Which set of AWS services will the Architect use to meet these requirements?

- AWS Directory Services, VPN connection, and ClassicLink
- AWS Directory Services, VPN connection, and Amazon Workspaces
- AWS Directory Services, VPN connection, and AWS Identity and Access Management
- AWS Directory Services, VPN connection, and Amazon S3

```

> [!NOTE] AWS Workspaces: Virtual desktops in the cloud

### 11

```

An operations team has an application running on EC2 instances inside two custom VPCs. The VPCs are located in the Ohio and N.Virginia Region respectively. The team wants to transfer data between the instances without traversing the public internet.

Which combination of steps will achieve this? (Select TWO.)

- Set up a VPC peering connection between the VPCs.
- Create an Egress-only Internet Gateway.
- Re-configure the route table’s target and destination of the instances’ subnet.
- Launch a NAT Gateway in the public subnet of each VPC.
- Deploy a VPC endpoint on each region to enable a private connection.

```

> [!NOTE] Peering VPC - Setup
>
> - Create, invite, accept VPC Peering Connection
> - Update each VPC's Route Table to point to IP range of other VPC.

### 13

```

A company troubleshoots the operational issues of their cloud architecture by logging the AWS API call history of all AWS resources. The Solutions Architect must implement a solution to quickly identify the most recent changes made to resources in their environment, including creation, modification, and deletion of AWS resources. One of the requirements is that the generated log files should be encrypted to avoid any security issues.

Which of the following is the most suitable approach to implement the encryption?

- Use CloudTrail and configure the destination Amazon Glacier archive to use Server-Side Encryption (SSE).
- Use CloudTrail and configure the destination S3 bucket to use Server-Side Encryption (SSE).
- Use CloudTrail and configure the destination S3 bucket to use Server Side Encryption (SSE) with AES-128 encryption algorithm.
- Use CloudTrail with its default settings.

```

> [!NOTE] CloudTrail - Encryption
>
> By default, CloudTrail event log files are encrypted using Amazon S3 server-side encryption (SSE)

### 17

```

An e-commerce company’s Chief Information Security Officer (CISO) has taken necessary measures to ensure that sensitive customer data is secure in the cloud. However, the company recently discovered that some customer Personally Identifiable Information (PII) was mistakenly uploaded to an S3 bucket.

The company aims to rectify this mistake and prevent any similar incidents from happening again in the future. Additionally, the company would like to be notified if this error occurs again.

As the Solutions Architect, which combination of options should you implement in this scenario? (Select TWO.### )

- Identify sensitive data using Amazon Macie and create an Amazon EventBridge (Amazon CloudWatch Events) rule to capture the SensitiveData event type.
- Set up an Amazon SNS topic as the target for an Amazon EventBridge (Amazon CloudWatch Events) rule that sends notifications when the error occurs again.
- Identify sensitive data using Amazon GuardDuty by creating an Amazon EventBridge (Amazon CloudWatch Events) rule to include the CRITICAL event types from GuardDuty findings.
- Set up an Amazon SQS as the target for an Amazon EventBridge (Amazon CloudWatch Events) rule that sends notifications when the error occurs again.
- Set up an AWS IoT Message Broker as the target for an Amazon EventBridge (Amazon CloudWatch Events) rule that sends notifications when the SensitiveData:S3Object/Personal event occurs again.

```

> [!NOTE] S3 - PII:
>
> - Use Amazon Macie to automatically detect sensitive data.
> - Then use EventBridge and SNS to send notification.
