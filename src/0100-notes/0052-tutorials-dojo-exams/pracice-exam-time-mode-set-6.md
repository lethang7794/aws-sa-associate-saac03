# TUTORIALS DOJO - Practice Exam - Time-mode Set 6

- Scored: 48/65 (74%)

  - SAA – Design Cost-Optimized Architectures: 50%
  - SAA – Design High-Performing Architectures: 78.26%
  - SAA – Design Resilient Architectures: 72.73%
  - SAA – Design Secure Architectures: 75%

- Time: 00:58:01
- Date: Oct 23, 2023, 20h

## SAA - Design Cost-Optimized Architectures

### 1

```
A multinational corporate and investment bank is regularly processing steady workloads of accruals, loan interests, and other critical financial calculations every night from 10 PM to 3 AM on their on-premises data center for their corporate clients. Once the process is done, the results are then uploaded to the Oracle General Ledger which means that the processing should not be delayed or interrupted. The CTO has decided to move its IT infrastructure to AWS to save costs. The company needs to reserve compute capacity in a specific Availability Zone to properly run their workloads.

As the Senior Solutions Architect, how can you implement a cost-effective architecture in AWS for their financial system?

- Use On-Demand EC2 instances which allows you to pay for the instances that you launch and use by the second. Reserve compute capacity in a specific Availability Zone to avoid any interruption.
- Use Regional Reserved Instances to reserve capacity on a specific Availability Zone and lower down the operating cost through its billing discounts.
- Use On-Demand Capacity Reservations, which provide compute capacity that is always available on the specified recurring schedule.
- Use Dedicated Hosts which provide a physical host that is fully dedicated to running your instances, and bring your existing per-socket, per-core, or per-VM software licenses to reduce costs.
```

> [!NOTE] EC2 - Capacity Reservations vs Reserved Instances
>
> - (On-demand) Capacity Reservations:
>
>   - Reserve compute capacity for your Amazon EC2 instances in a specific Availability Zone for any duration
>   - Full price
>
> - Reserve Instances:
>
>   - Regional Reserve Instances: Save money
>   - Zone Reserve Instances: Save money

### 4

```
A company plans to use a cloud storage service to temporarily store its log files. The number of files to be stored is still unknown, but it only needs to be kept for 12 hours.

Which of the following is the most cost-effective storage class to use in this scenario?

- Amazon S3 Standard
- Amazon S3 One Zone-IA
- Amazon S3 Standard-IA
- Amazon S3 Glacier Deep Archive
```

> [!NOTE] S3 - Min Storage Duration
>
> | Storage Class                      | Min Storage Duration |
> | ---------------------------------- | -------------------- |
> | Standard, Intelligent-Tier         | -                    |
> | Standard-IA, One Zone - IA         | 30 days              |
> | Glacier Instant/Flexible Retrieval | 90 days              |
> | Glacier Deep Archive               | 180 days             |

## SAA - Design High-Performing Architectures

### 5

```
A Solutions Architect needs to launch a web application that will be served globally using Amazon CloudFront. The application is hosted in an Amazon EC2 instance which will be configured as the origin server to process and serve dynamic content to its customers.

Which of the following options provides high availability for the application?

- Use Amazon S3 to serve the dynamic content of your web application and configure the S3 bucket to be part of an origin group.
- Launch an Auto Scaling group of EC2 instances and configure it to be part of an origin group.
- Provision two EC2 instances deployed in different Availability Zones and configure them to be part of an origin group.
- Use Lambda@Edge to improve the performance of your web application and ensure high availability. Set the Lambda@Edge functions to be part of an origin group.
```

> [!NOTE] CloudFront - Origin _Failover_
>
> Needs an origin groups with 2 origin:
>
> - a primary origin
> - a secondary origin

### 9

```
A company requires corporate IT governance and cost oversight of all of its AWS resources across its divisions around the world. Their corporate divisions want to maintain administrative control of the discrete AWS resources they consume and ensure that those resources are separate from other divisions.

Which of the following options will support the autonomy of each corporate division while enabling the corporate IT to maintain governance and cost oversight? (Select TWO.)

- Use AWS Trusted Advisor and AWS Resource Groups Tag Editor
- Enable IAM cross-account access for all corporate IT administrators in each child account.
- Create separate VPCs for each division within the corporate IT AWS account. Launch an AWS Transit Gateway with equal-cost multipath routing (ECMP) and VPN tunnels for intra-VPC communication.
- Use AWS Consolidated Billing by creating AWS Organizations to link the divisions’ accounts to a parent corporate account.
- Create separate Availability Zones for each division within the corporate IT AWS account. Improve communication between the two AZs using the AWS Global Accelerator.
```

> [!NOTE] IAM cross-account access: Delegate access across AWS accounts
>
> e.g. 2 accounts for resources:
>
> - `Production` account: For production resources
> - `Development` account: For developments resources
>
> IAM user groups: `Developers` can
>
> - Always access resources in `Development`
> - From time to time, access resources in `Production` account.

### 16

```
A company has a fleet of running Spot EC2 instances behind an Application Load Balancer. The incoming traffic comes from various users across multiple AWS regions, and you would like to have the user's session shared among the fleet of instances.

A Solutions Architect is required to set up a distributed session management layer that will provide scalable and shared data storage for the user sessions that supports multithreaded performance. The cache layer must also detect any node failures and replace the failed ones automatically.

Which of the following would be the best choice to meet the requirement while still providing sub-millisecond latency for the users?
```

> [!NOTE] Elasticache - Redis vs Memcached
>
> - Redis: Advance structure, replicas
>
> - Memcached: Multi-threads, multi-nodes.

### 17

```
A Solutions Architect is working for a weather station in Asia with a weather monitoring system that needs to be migrated to AWS. Since the monitoring system requires a low network latency and high network throughput, the Architect decided to launch the EC2 instances to a new cluster placement group. The system was working fine for a couple of weeks, however, when they try to add new instances to the placement group that already has running EC2 instances, they receive an 'insufficient capacity error'.

How will the Architect fix this issue?

- Stop and restart the instances in the Placement Group and then try the launch again.
- Create another Placement Group and launch the new instances in the new group.
- Verify all running instances are of the same size and type and then try the launch again.
- Submit a capacity increase request to AWS as you are initially limited to only 12 instances per Placement Group.
```

> [!NOTE] EC2 - Placement Group - Error adding instance 'insufficient capacity error'
>
> - Amazon does not currently have enough available On-Demand capacity on the existing host to fulfill your request.
>
> Workaround: Stop all instances, then start -> Maybe a new host have enough capacity

### 22

```
A manufacturing company launched a new type of IoT sensor. The sensor will be used to collect large streams of data records. You need to create a solution that can ingest and analyze the data in real-time with millisecond response times.

Which of the following is the best option that you should implement in this scenario?

- Ingest the data using Amazon Kinesis Data Streams and create an AWS Lambda function to store the data in Amazon Redshift.
- Ingest the data using Amazon Kinesis Data Firehose and create an AWS Lambda function to store the data in Amazon DynamoDB.
- Ingest the data using Amazon Simple Queue Service and create an AWS Lambda function to store the data in Amazon Redshift.
- Ingest the data using Amazon Kinesis Data Streams and create an AWS Lambda function to store the data in Amazon DynamoDB.
```

> [!NOTE] Latency: Redshift vs DynamoDB
>
> - Redshift: sub-second (s)
> - DynamoDB: millisecond (ms)

## SAA - Design Resilient Architectures

### 6

```
A company developed a financial analytics web application hosted in a Docker container using MEAN (MongoDB, Express.js, AngularJS, and Node.js) stack. You want to easily port that web application to AWS Cloud which can automatically handle all the tasks such as balancing load, auto-scaling, monitoring, and placing your containers across your cluster.

Which of the following services can be used to fulfill this requirement?

- AWS CloudFormation
- AWS Compute Optimizer
- Amazon Elastic Container Service (Amazon ECS)
- AWS Elastic Beanstalk
```

> [!NOTE] Elastic Beanstalk: Run and manage web apps
>
> - Reduces the operational overhead by taking care of provisioning the needed resources for your application
>
> - Elastic Beanstalk supports:
>
>   - applications developed in Go, Java, .NET, Node.js, PHP, Python, and Ruby
>   - custom environment with Docker
>
> - When you deploy your application, Elastic Beanstalk
>
>   - builds the selected supported platform version
>   - provisions one or more AWS resources, such as Amazon EC2 instances, to run your application.

> [!NOTE] ECS: Run highly secure, reliable, and scalable containers

> [!NOTE] Elastic Beanstalk vs ECS
>
> - Elastic Beanstalk:
>
>   Automatically handles the details of capacity provisioning, load balancing, scaling, and application health monitoring.
>
>   => Quickly deploy and manage applications in the AWS Cloud without having to learn about the infrastructure that runs those applications
>
> - ECS:
>
>   Need to manually config Service Auto Scaling, Service Load Balancing, and Monitoring with CloudWatch

### 14

```
A company is running an on-premises application backed by a 1TB MySQL 8.0 database. A couple of times each month, the production data is fully copied to a staging database at the request of the analytics team. The team can't work on the staging database until the copy is finished, which takes hours.

Throughout this period, the application experiences intermittent downtimes as well. To expedite the process for the analytics team, a solutions architect must redesign the application's architecture in AWS. The application must also be highly resilient to disruptions.

Which combination of actions best satisfies the given set of requirements while being the most cost-effective? (Select TWO)
```

> [!NOTE] Aurora - Clone:
>
> - Creating a Aurora clone is _faster_ and more _space-efficient_ than physically copying the data using other techniques, such as restoring from a snapshot like you would in Amazon RDS
>
> - Aurora uses a copy-on-write protocol to create a clone.

> [!NOTE] Aurora - Storage:
>
> - Aurora data is stored in the _cluster volume_, which is a single, virtual volume that uses solid state drives (SSDs)
>   - A _cluster volume_ consists of copies of the data across three Availability Zones in a single AWS Region.
>     - The data is automatically replicated across Availability Zones,

### 18

```
A cryptocurrency company wants to go global with its international money transfer app. Your project is to make sure that the database of the app is highly available in multiple regions.

What are the benefits of adding Multi-AZ deployments in Amazon RDS? (Select TWO.)

- Provides enhanced database durability in the event of a DB instance component failure or an Availability Zone outage.
- Significantly increases the database performance.
- Creates a primary DB Instance and synchronously replicates the data to a standby instance in a different Availability Zone (AZ) in a different region.
- Increased database availability in the case of system upgrades like OS patching or DB Instance scaling.
- Provides SQL optimization.
```

> [!NOTE] RDS Multi-Az Failover:
>
> - Loss of availability in primary Availability Zone
>
> - Primary DB instance:
>
>   - Loss of network connectivity to primary
>   - Compute unit failure on primary
>   - Storage failure on primary
>
> - DB instance scaling or system upgrades:
>
>   Applied first on the standby prior then automatic failover

### 19

```
A Solutions Architect is managing a three-tier web application that processes credit card payments and online transactions. Static web pages are used on the front-end tier while the application tier contains a single Amazon EC2 instance that handles long-running processes. The data is stored in a MySQL database. The Solutions Architect is instructed to decouple the tiers to create a highly available application.

Which of the following options can satisfy the given requirement?

- Move all the static assets and web pages to Amazon CloudFront. Use Auto Scaling in Amazon EC2 instance. Migrate the database to Amazon RDS with Multi-AZ deployments configuration.
- Move all the static assets, web pages, and the backend application to a larger instance. Use Auto Scaling in Amazon EC2 instance. Migrate the database to Amazon Aurora.
- Move all the static assets to Amazon S3. Set concurrency limit in AWS Lambda to move the application to a serverless architecture. Migrate the database to Amazon DynamoDB.
- Move all the static assets and web pages to Amazon S3. Re-host the application to Amazon Elastic Container Service (Amazon ECS) containers and enable Service Auto Scaling. Migrate the database to Amazon RDS with Multi-AZ deployments configuration.
```

> [!NOTE] CloudFront cannot host data, only cache data.

### 20

```
A disaster recovery team is planning to back up on-premises records to a local file server share through SMB protocol. To meet the company’s business continuity plan, the team must ensure that a copy of data from 48 hours ago is available for immediate access. Accessing older records with delay is tolerable.

Which should the DR team implement to meet the objective with the LEAST amount of configuration effort?

- Use an AWS Storage File gateway with enough storage to keep data from the last 48 hours. Send the backups to an SMB share mounted as a local disk.
- Create an SMB file share in Amazon FSx for Windows File Server that has enough storage to store all backups. Access the file share from on-premises.
- Mount an Amazon EFS file system on the on-premises client and copy all backups to an NFS share.
- Create an AWS Backup plan to copy data backups to a local SMB share every 48 hours.
```

> [!NOTE] AWS File Gateway - Handle Writes
>
> - When a client writes data to a file via File Gateway, that data is first written to the _local cache disk_ on the gateway itself.
>
>   - Once the data has been safely persisted to the local cache, only then does the File Gateway acknowledge the write back to the client.
>
> - From there, File Gateway transfers the data to the S3 bucket asynchronously in the background, optimizing data transfer using multipart parallel uploads, and encrypting data in transit using HTTPS.

### 21

```
A website hosted on Amazon ECS container instances loads slowly during peak traffic, affecting its availability. Currently, the container instances are run behind an Application Load Balancer, and CloudWatch alarms are configured to send notifications to the operations team if there is a problem in availability so they can scale out if needed. A solutions architect needs to create an automatic scaling solution when such problems occur.

Which solution could satisfy the requirement? (Select TWO.)

- Create an AWS Auto Scaling policy that scales out an ECS service when the ALB endpoint becomes unreachable.
- Create an AWS Auto Scaling policy that scales out the ECS service when the ALB hits a high CPU utilization.
- Create an AWS Auto Scaling policy that scales out the ECS cluster when the ALB target group’s CPU utilization is too high.
- Create an AWS Auto Scaling policy that scales out the ECS service when the service’s memory utilization is too high.
- Create an AWS Auto Scaling policy that scales out the ECS cluster when the service’s CPU utilization is too high.
```

> [!NOTE] ECS Auto Scaling - Metric:
>
> - ECS Instances (~ K8s Node):
>
>   - CPU Utilization
>   - Disk
>     - Disk Reads
>     - Disk Read Operations
>     - Disk Writes
>     - Disk Write Operations
>   - Network
>     - Network In
>     - Network Out
>   - Status Check Failed
>     - Status Check Failed (Any)
>     - Status Check Failed (Instance)
>     - Status Check Failed (System)
>
> - ECS Service (~ K8s Pod):
>
>   - ECSService**AverageCPU**Utilization
>   - ECSService**AverageMemory**Utilization
>   - ALB**Request**Count**PerTarget**

## SAA - Design Secure Architectures

### 2

```
A company has several websites and hosts its infrastructure on the AWS Cloud. The mission-critical web applications are hosted on fleets of Amazon EC2 instances behind Application Load Balancers. The company uses AWS Certificate Manager (ACM) provided certificate on the ALBs to enable HTTPS access on its websites. The security team wants to get notified 30 days before the expiration of the SSL certificates.

Which of the following can the Solutions Architect implement to meet this request? (Select TWO.)

- Use AWS Config to manually create a rule that checks for certificate expiry on ACM. Create an Amazon EventBridge (Amazon CloudWatch Events) rule to send an alert to an Amazon Simple Notification Service (Amazon SNS) topic when AWS Config flags a resource.
- Create an Amazon EventBridge (Amazon CloudWatch Events) rule that will check AWS Health or ACM expiration events related to ACM certificates. Send an alert notification to an Amazon Simple Notification Service (Amazon SNS) topic when a certificate is going to expire in 30 days.
- Modify all certificates to use the AWS Certificate Manager Private Certificate Authority. Create an Amazon EventBridge (Amazon CloudWatch Events) rule that will check for ACM events that shows certificates expiring within 30 days. Set the target to invoke an AWS Lambda function to send a message to an Amazon SNS topic.
- Utilize AWS Trusted Advisor to check for the ACM certificates that will expire in 30 days. Using this metric, create an Amazon CloudWatch alarm that will send an alert to an AWS Systems Manager OpsItem.
- Create an Amazon EventBridge (Amazon CloudWatch Events) rule and schedule it to run every day to identify the expiring ACM certificates. Configure to rule to check the DaysToExpiry metric of all ACM certificates in Amazon CloudWatch. Send an alert notification to an Amazon Simple Notification Service (Amazon SNS) topic when a certificate is going to expire in 30 days.
```

> [!NOTE] Monitor expiration of certificates
>
> - Option 1: Use the ACM built-in Certificate Expiration event
>   - ACM sends daily expiration events for all active certificates (public, private and imported) starting 45 days prior to expiration.
>   - AWS Health events are generated for ACM certificates that are eligible for renewal.
> - Option 2: Use the `DaysToExpiry` metric

### 3

```
An application is hosted in an Auto Scaling group of EC2 instances and a Microsoft SQL Server on Amazon RDS. There is a requirement that all in-flight data between your web servers and RDS should be secured.

Which of the following options is the MOST suitable solution that you should implement? (Select TWO.)

- Force all connections to your DB instance to use SSL by setting the rds.force_ssl parameter to true. Once done, reboot your DB instance.
- Download the Amazon RDS Root CA certificate. Import the certificate to your servers and configure your application to use SSL to encrypt the connection to RDS.
- Specify the TDE option in an RDS option group that is associated with that DB instance to enable transparent data encryption (TDE).
- Enable the IAM DB authentication in RDS using the AWS Management Console.
- Configure the security groups of your EC2 instances and RDS to only allow traffic to and from port 443.
```

> [!NOTE] Use Secure Sockets Layer (SSL) to encrypt connections between your client applications and your Amazon RDS DB instances running Microsoft SQL Server.
>
> - Download the Amazon RDS Root CA certificate. Import the certificate to your servers and configure your application to use SSL to encrypt the connection to RDS.
> - Force all connections to your DB instance to use SSL by setting the rds.force_ssl parameter to true. Once done, reboot your DB instance.

### 5

```
A company is designing a customized text messaging service that targets its mobile app users. As part of its multi-engagement marketing campaign, a company needs to send a one-time confirmation message to all of its subscribers using Short Message Service (SMS). The solutions architect must design the system to allow a subscriber to reply to the SMS messages.

The customer responses must be kept for an entire year for analysis and targeted sale promotions. In addition, the SMS responses must also be collected, processed, and analyzed in near-real-time.

Which solution will meet these requirements with the LEAST operational overhead?

- Create a new topic in Amazon Simple Notification Service (Amazon SNS) and an Amazon Kinesis data stream configured with all its default settings. Send SMS messages using Amazon SNS. Integrate the Kinesis data stream to the SNS topic for data collection, archiving, and analysis.
- Launch a new Amazon Simple Queue Service (Amazon SQS) queue to send out SMS messages. Use AWS Step Functions and AWS Lambda to collect, process, and analyze responses. Store the data to Amazon S3 Glacier Instant Retrieval.
- Create an Amazon Pinpoint journey for the multi-engagement SMS marketing campaign and an Amazon Kinesis Data Stream for analysis. Configure Amazon Pinpoint to send events to the Kinesis data stream for collection, processing, and analysis. Set the retention period of the Kinesis data stream to 365 days.
- Set up an Amazon Connect contact flow to send the confirmation SMS messages to the mobile app users. Deploy an AWS Lambda function to process and analyze the responses. Store the data to Amazon S3 Glacier Flexible Retrieval
```

> [!NOTE] Amazon Pinpoint: Multichannel marketing communications
>
> Engage your customers by sending them email, SMS and voice messages, and push notifications.
>
> - send **targeted messages** (such as promotions and retention campaigns)
> - send **transactional messages** (such as order confirmations and password reset messages)

### 13

```
A Solutions Architect created a brand new IAM User with a default setting using AWS CLI. This is intended to be used to send API requests to Amazon S3, DynamoDB, Lambda, and other AWS resources of the company’s cloud infrastructure.

Which of the following must be done to allow the user to make API calls to the AWS resources?

- Do nothing as the IAM User is already capable of sending API calls to your AWS resources.
- Enable Multi-Factor Authentication for the user.
- Assign an IAM Policy to the user to allow it to send API calls.
- Create a set of Access Keys for the user and attach the necessary permissions.
```

> [!NOTE] Authenticate for making API calls to AWS resources
>
> - Long-term credentials: Access key
