# TUTORIALS DOJO - Practice Exam - Time-mode Set 2

Scored: 49 of 65 point(s), (75.38%) - 01:03:59

- SAA – Design Cost-Optimized Architectures: 72.73%
- SAA – Design High-Performing Architectures: 92.86%
- SAA – Design Resilient Architectures: 68.42%
- SAA – Design Secure Architectures: 71.43%

## Category: SAA - Design Cost-Optimized Architectures

### 3

```
A media company hosts large volumes of archive data that are about 250 TB in size on their internal servers. They have decided to move these data to S3 because of its durability and redundancy. The company currently has a 100 Mbps dedicated line connecting their head office to the Internet.

Which of the following is the FASTEST and the MOST cost-effective way to import all these data to Amazon S3?

- Upload it directly to S3
- Establish an AWS Direct Connect connection then transfer the data over to S3.
- Use AWS Snowmobile to transfer the data over to S3.
- Order multiple AWS Snowball devices to upload the files to Amazon S3.
```

> [!NOTE] AWS Snow Family:
>
> - Snowcone: 8TB - 14TB
> - Snowball: 80TB
> - Snowball Edge:
>   - Snowball Edge Compute Optimized: 80TB + EC2
>   - Snowball Edge Storage Optimized: 210TB + EC2
> - Snowmobile: 100PB

### 5

```
A company has a serverless application made up of AWS Amplify, Amazon API Gateway and a Lambda function. The application is connected to an Amazon RDS MySQL database instance inside a private subnet. A Lambda Function URL is also implemented as the dedicated HTTPS endpoint for the function, which has the following value:

https://12june1898pil1pinas.lambda-url.us-west-2.on.aws/

There are times during peak loads when the database throws a “too many connections” error preventing the users from accessing the application.

Which solution could the company take to resolve the issue?

- Increase the concurrency limit of the Lambda function
- Provision an RDS Proxy between the Lambda function and RDS database instance
- Increase the rate limit of API Gateway
- Increase the memory allocation of the Lambda function
```

> [!NOTE] RDS - “too many connections”

> [!NOTE] RDS Proxy: allow your applications to pool and share database connections to improve their ability to scale.

### 6

```

A company is building an internal application that serves as a repository for images uploaded by a couple of users. Whenever a user uploads an image, it would be sent to Kinesis Data Streams for processing before it is stored in an S3 bucket. If the upload was successful, the application will return a prompt informing the user that the operation was successful. The entire processing typically takes about 5 minutes to finish.

Which of the following options will allow you to asynchronously process the request to the application from upload request to Kinesis, S3, and return a reply in the most cost-effective manner?

- Use a combination of Lambda and Step Functions to orchestrate service components and asynchronously process the requests.
- Use a combination of SQS to queue the requests and then asynchronously process them using On-Demand EC2 Instances.
- Replace the Kinesis Data Streams with an Amazon SQS queue. Create a Lambda function that will asynchronously process the requests.
- Use a combination of SNS to buffer the requests and then asynchronously process them using On-Demand EC2 Instances.
```

> [!NOTE] Kinesis Data Streams vs SQS
>
> - Kinesis Data Streams: Provide real-time analyzing, but required provisioning shards
> - SQS: Use with Lambda (and its Event Sourcing) provides a cost-efficient solution

## SAA - Design High-Performing Architectures

### 6

```
A software company has resources hosted in AWS and on-premises servers. You have been requested to create a decoupled architecture for applications which make use of both resources.

Which of the following options are valid? (Select TWO.)

- Use SWF to utilize both on-premises servers and EC2 instances for your decoupled application
- Use RDS to utilize both on-premises servers and EC2 instances for your decoupled application
- Use SQS to utilize both on-premises servers and EC2 instances for your decoupled application
- Use VPC peering to connect both on-premises servers and EC2 instances for your decoupled application
```

> [!NOTE] Amazon Simple Workflow Service (SWF): build applications that coordinate work across distributed components.

> [!NOTE] VPC Peering: only works for VPCs, doesn't work with on-premise networks

## SAA - Design Resilient Architectures

### 4

```
A company has a static corporate website hosted in a standard S3 bucket and a new web domain name that was registered using Route 53. You are instructed by your manager to integrate these two services in order to successfully launch their corporate website.

What are the prerequisites when routing traffic using Amazon Route 53 to a website that is hosted in an Amazon S3 Bucket? (Select TWO.)

- The S3 bucket name must be the same as the domain name
- A registered domain name
- The record set must be of type "MX"
- The S3 bucket must be in the same region as the hosted zone
- The Cross-Origin Resource Sharing (CORS) option should be enabled in the S3 bucket
```

> [!NOTE] S3 Static website - Custom Domain: "The S3 bucket name must be the same as the domain name"
>
> What if someone use my domain name for their bucket???

### 6

```
As part of the Business Continuity Plan of your company, your IT Director instructed you to set up an automated backup of all of the EBS Volumes for your EC2 instances as soon as possible.

What is the fastest and most cost-effective solution to automatically back up all of your EBS Volumes?

- For an automated solution, create a scheduled job that calls the "create-snapshot" command via the AWS CLI to take a snapshot of production EBS volumes periodically.
- Set your Amazon Storage Gateway with EBS volumes as the data source and store the backups in your on-premises servers through the storage gateway.
- Use an EBS-cycle policy in Amazon S3 to automatically back up the EBS volumes.
- Use Amazon Data Lifecycle Manager (Amazon DLM) to automate the creation of EBS snapshots.
```

> [!NOTE] EBS - Backup: Use Amazon DLM

> [!NOTE] Amazon Data Lifecycle Manager (Amazon DLM): Automate management of Amazon EBS snapshots and Amazon EBS-backed AMIs

### 7

```
A DevOps Engineer is required to design a cloud architecture in AWS. The Engineer is planning to develop a highly available and fault-tolerant architecture consisting of an Elastic Load Balancer and an Auto Scaling group of EC2 instances deployed across multiple Availability Zones. This will be used by an online accounting application that requires path-based routing, host-based routing, and bi-directional streaming using Remote Procedure Call (gRPC).

Which configuration will satisfy the given requirement?

- Configure an Application Load Balancer in front of the auto-scaling group. Select gRPC as the protocol version.
- Configure a Network Load Balancer in front of the auto-scaling group. Use a UDP listener for routing.
- Configure a Network Load Balancer in front of the auto-scaling group. Create an AWS Global Accelerator accelerator and set the load balancer as an endpoint.
- Configure a Gateway Load Balancer in front of the auto-scaling group. Ensure that the IP Listener Routing uses the GENEVE protocol on port 6081 to allow gRPC response traffic.
```

> [!NOTE] Elastic Load Balancer protocol:
>
> - Application Load Balancer: HTTP/s and gRPC
> - Network Load Balancer: TCP, UDP, TLS
> - Gateway Load Balancer: IP

### 11

```
A company has multiple VPCs with IPv6 enabled for its suite of web applications. The Solutions Architect tried to deploy a new Amazon EC2 instance but she received an error saying that there is no IP address available on the subnet.

How should the Solutions Architect resolve this problem?

- Set up a new IPv4 subnet with a larger CIDR range. Associate the new subnet with the VPC and then launch the instance.
- Ensure that the VPC has IPv6 CIDRs only. Remove any IPv4 CIDRs associated with the VPC.
- Set up a new IPv6-only subnet with a large CIDR range. Associate the new subnet with the VPC then launch the instance.
- Disable the IPv4 support in the VPC and use the available IPv6 addresses.
```

> [!NOTE] VPC: IPv4 vs IPv6
>
> - IPv4 is the default IP addressing system for VPC => Cannot be disabled
> - IPv6: optional

### 13

```
A company hosts its web application on a set of Amazon EC2 instances in an Auto Scaling group behind an Application Load Balancer (ALB). The application has an embedded NoSQL database. As the application receives more traffic, the application becomes overloaded mainly due to database requests. The management wants to ensure that the database is eventually consistent and highly available.

Which of the following options can meet the company requirements with the least operational overhead?

- Change the ALB with a Network Load Balancer (NLB) to handle more traffic and integrate AWS Global Accelerator to ensure high availability. Configure replication of the NoSQL database on the set of Amazon EC2 instances to spread the database load.
- Configure the Auto Scaling group to spread the Amazon EC2 instances across three Availability Zones. Use the AWS Database Migration Service (DMS) with a replication server and an ongoing replication task to migrate the embedded NoSQL database to Amazon DynamoDB
- Change the ALB with a Network Load Balancer (NLB) to handle more traffic. Use the AWS Migration Service (DMS) to migrate the embedded NoSQL database to Amazon DynamoDB.
- Configure the Auto Scaling group to spread the Amazon EC2 instances across three Availability Zones. Configure replication of the NoSQL database on the set of Amazon EC2 instances to spread the database load.
```

Least operational overhead: No need to change ALB to NLB

### 18

```
A company runs a messaging application in the ap-northeast-1 and ap-southeast-2 region. A Solutions Architect needs to create a routing policy wherein a larger portion of traffic from the Philippines and North India will be routed to the resource in the ap-northeast-1 region.

Which Route 53 routing policy should the Solutions Architect use?

- Geoproximity Routing
- Geolocation Routing
- Latency Routing
- Weighted Routing
```

> [!NOTE] Route 53: GeoProximity Routing vs Geolocation Routing vs Latency-based Routing
>
> - Geolocation Routing: Location of user
> - GeoProximity Routing: Location of user AND AWS resources (with bias)
> - Latency-based Routing

## SAA - Design Secure Architectures

### 1

```
A solutions architect is designing a three-tier website that will be hosted on an Amazon EC2 Auto Scaling group fronted by an Internet-facing Application Load Balancer (ALB). The website will persist data to an Amazon Aurora Serverless DB cluster, which will also be used for generating monthly reports.

The company requires a network topology that follows a layered approach to reduce the impact of misconfigured security groups or network access lists. Web filtering must also be enabled to automatically stop traffic to known malicious URLs and to immediately drop requests coming from blacklisted fully qualified domain names (FQDNs).

Which network topology provides the minimum resources needed for the website to work?

- Set up an Application Load Balancer deployed in a public subnet, then host the Auto Scaling Group of Amazon EC2 instances and the Aurora Serverless DB cluster in private subnets. Launch an AWS Network Firewall with the appropriate firewall policy to automatically stop traffic to known malicious URLs and drop requests coming from blacklisted FQDNs. Reroute your Amazon VPC network traffic through the firewall endpoints.
- Set up an Application Load Balancer and a NAT Gateway deployed in public subnets. Launch the Auto Scaling Group of Amazon EC2 instances and Aurora Serverless DB cluster in private subnets. Directly integrate the AWS Network Firewall with the Application Load Balancer to automatically stop traffic to known malicious URLs and drop requests coming from blacklisted FQDNs.
- Set up an Application Load Balancer in front of an Auto Scaling group of Amazon EC2 instances with an Aurora Serverless DB cluster to persist data. Launch a NAT Gateway in a public subnet to restrict external services from initiating a connection to the EC2 instances and immediately drop requests from unauthorized FQDNs. Deploy all other resources in private subnets.
- Set up an Auto Scaling group of Amazon EC2 instances behind an Application Load Balancer with an Aurora Serverless DB cluster to store application data. Deploy all resources in a public subnet. Configure host-based routing to the Application Load Balancer to stop traffic to known malicious URLs and drop requests from blacklisted FQDNs.
```

> [!NOTE] AWS Network Firewall
>
> Traffic from VPC need to be routed to Network Firewall through the firewall endpoints.

### 7

```
A company needs to assess and audit all the configurations in their AWS account. It must enforce strict compliance by tracking all configuration changes made to any of its Amazon S3 buckets. Publicly accessible S3 buckets should also be identified automatically to avoid data breaches.

Which of the following options will meet this requirement?

- Use AWS Trusted Advisor to analyze your AWS environment.
- Use AWS IAM to generate a credential report.
- Use AWS Config to set up a rule in your AWS account.
- Use AWS CloudTrail and review the event history of your AWS account.
```

> [!NOTE] AWS Config: _Track_ and _evaluate_ configuration changes

> [!NOTE] AWS Trusted Advisor: Optimize performance and security
>
> - Inspects your AWS environment and recommends ways to save money, close security gaps, and improve system availability and performance.

### 10

```
A media company has two VPCs: VPC-1 and VPC-2 with peering connection between each other. VPC-1 only contains private subnets while VPC-2 only contains public subnets. The company uses a single AWS Direct Connect connection and a virtual interface to connect their on-premises network with VPC-1.

Which of the following options increase the fault tolerance of the connection to VPC-1? (Select TWO.)

- Establish a new AWS Direct Connect connection and private virtual interface in the same region as VPC-2.
- Establish a hardware VPN over the Internet between VPC-2 and the on-premises network.
- Establish a hardware VPN over the Internet between VPC-1 and the on-premises network.
- Use the AWS VPN CloudHub to create a new AWS Direct Connect connection and private virtual interface in the same region as VPC-2.
- Establish another AWS Direct Connect connection and private virtual interface in the same AWS region as VPC-1.
```

> [!NOTE] AWS VPN: Securely access your network resources (by establishing a secure and private tunnel from your network or device to the AWS Cloud.)
>
> - AWS Site-to-Site VPN: AWS managed VPN services
> - AWS Client VPN: client-based managed VPN service

> [!NOTE] AWS Direct Connect: Dedicated network connection to AWS (from your on-premises network)

### 16

```
A multinational company currently operates multiple AWS accounts to support its operations across various branches and business units. The company needs a more efficient and secure approach in managing its vast AWS infrastructure to avoid costly operational overhead.

To address this, they plan to transition to a consolidated, multi-account architecture while integrating a centralized corporate directory service for authentication purposes.

Which combination of options can be used to meet the above requirements? (Select TWO.)

- Set up a new entity in AWS Organizations and configure its authentication system to utilize AWS Directory Service directly.
- Establish an identity pool through Amazon Cognito and adjust the AWS IAM Identity Center settings to allow Amazon Cognito authentication.
- Utilize AWS CloudTrail to enable centralized logging and monitoring across all AWS accounts.
- Integrate AWS IAM Identity Center with the corporate directory service for centralized authentication. Configure a service control policy (SCP) to manage the AWS accounts.
- Implement AWS Organizations to create a multi-account architecture that provides a consolidated view and centralized management of AWS accounts.
```

> [!NOTE] Service Control Policy (SCP): a feature of AWS Organizations
>
> - A type of organization policy that you can use to manage permissions in your organization.

### 18

```
A startup has multiple AWS accounts that are assigned to its development teams. Since the company is projected to grow rapidly, the management wants to consolidate all of its AWS accounts into a multi-account setup. To simplify the login process on the AWS accounts, the management wants to utilize its existing directory service for user authentication

Which combination of actions should a solutions architect recommend to meet these requirements? (Select TWO.)

- Create an identity pool on Amazon Cognito and configure it to use the company’s directory service. Configure AWS IAM Identity Center (AWS Single Sign-On) to accept Cognito authentication.
- On the master account, use AWS Organizations to create a new organization with all features turned on. Enable the organization’s external authentication and point it to use the company’s directory service.
- Create Service Control Policies (SCP) in the organization to manage the child accounts. Configure AWS IAM Identity Center (AWS Single Sign-On) to use AWS Directory Service.
- On the master account, use AWS Organizations to create a new organization with all features turned on. Invite the child accounts to this new organization.
- Configure AWS IAM Identity Center (AWS Single Sign-On) for the organization and integrate it with the company’s directory service using the Active Directory Connector
```

> [!NOTE] AWS IAM Identity Center: Manage single sign-on access to AWS accounts and apps

> [!NOTE] Amazon Cognito: Identity management for your apps

- Customer already has Active Directory Service -> No need to use Amazon Cognito -> use AWS IAM Identity Center with the Active Director Connector

### 19

```
A company is hosting its web application in an Auto Scaling group of EC2 instances behind an Application Load Balancer. Recently, the Solutions Architect identified a series of SQL injection attempts and cross-site scripting attacks to the application, which had adversely affected their production data.

Which of the following should the Architect implement to mitigate this kind of attack?

- Use Amazon Guard​Duty to prevent any further SQL injection and cross-site scripting attacks in your application.
- Using AWS Firewall Manager, set up security rules that block SQL injection and cross-site scripting attacks. Associate the rules to the Application Load Balancer.
- Block all the IP addresses where the SQL injection and cross-site scripting attacks originated using the Network Access Control List.
- Set up security rules that block SQL injection and cross-site scripting attacks in AWS Web Application Firewall (WAF). Associate the rules to the Application Load Balancer.
```

> [!NOTE] Block SQL injection
>
> - AWS Web Application Firewall (WAF): can block SQL injection.
>
> - GuardDuty: only detect SQL injection, not block.

> [!NOTE] [AWS WAF, AWS Shield, and AWS Firewall Manager](https://docs.aws.amazon.com/waf/latest/developerguide/what-is-aws-waf.html): used together to create a comprehensive security solution
>
> - AWS WAF: Protect your web applications from common exploits
>
>   - Monitor web requests that your end users send to your applications and to control access to your content.
>
>   - Used for API Gateway, Load Balancer, Cloudfront.
>
>   - Block SQL injection, XSS (cross-site scripting)
>
>   - Can minimize the effects of a DDOS attack
>
> - AWS Shield: Managed DDoS protection
>
>   - Provides protection against distributed denial of service (DDoS) attacks for AWS resources, at the network and transport layers (layer 3 and 4) and the application layer (layer 7)
>   - Can use for more services: EC2, Route53
>
>   - Shield Standard: Free, L3-L4
>   - Shield Advanced: Cost money, L7
>
> - AWS Firewall Manager: Centrally configure and manage firewall rules across your accounts
>
>   Provides management of protections like AWS WAF and Shield Advanced across accounts and resources, even as new resources are added.

> [!NOTE] How about AWS Network Firewall?
>
> AWS Network Firewall: Deploy network firewall security across your VPCs
