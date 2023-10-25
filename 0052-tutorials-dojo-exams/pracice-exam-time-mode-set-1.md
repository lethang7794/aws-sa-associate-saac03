# TUTORIALS DOJO - Practice Exam - Time-mode Set 1

Scored: 43/65 (66.15%)

- SAA – Design Cost-Optimized Architectures: 50%
- SAA – Design High-Performing Architectures: 68.18%
- SAA – Design Resilient Architectures: 73.68%
- SAA – Design Secure Architectures: 59.09%

## SAA - Design Cost-Optimized Architectures

### 2

```txt
A company is using AWS Fargate to run a batch job whenever an object is uploaded to an Amazon S3 bucket. The minimum ECS task count is initially set to 1 to save on costs and should only be increased based on new objects uploaded to the S3 bucket.

Which is the most suitable option to implement with the LEAST amount of effort?

- Set up an Amazon EventBridge (Amazon CloudWatch Events) rule to detect S3 object PUT operations and set the target to a Lambda function that will run the StartTask API command.
- Set up an Amazon EventBridge (Amazon CloudWatch Events) rule to detect S3 object PUT operations and set the target to the ECS cluster to run a new ECS task.
- Set up an alarm in Amazon CloudWatch to monitor S3 object-level operations that are recorded on CloudTrail. Create an Amazon EventBridge (Amazon CloudWatch Events) rule that triggers the ECS cluster when new CloudTrail events are detected.
- Set up an alarm in CloudWatch to monitor S3 object-level operations recorded on CloudTrail. Set two alarm actions to update the ECS task count to scale-out/scale-in depending on the S3 event.
```

> CloudWatch - CloudWatch Logs - CloudTrail - CloudWatch Events - EventBridge?
>
> - CloudWatch: Monitor resources and applications
>
>   - CloudWatch Logs: Monitor, store, and access your log files from Amazon Elastic Compute Cloud instances, AWS CloudTrail, or other sources.
>
>   - CLoudWatch Events: Is now Amazon EventBridge
>
> - CloudTrail: Track and monitor activities by users, roles, or AWS services
>
> - EventBridge: Serverless event bus for SaaS apps and AWS services

### 4

```txt
An AI-powered Forex trading application consumes thousands of data sets to train its machine learning model. The application’s workload requires a high-performance, parallel hot storage to process the training datasets concurrently. It also needs cost-effective cold storage to archive those datasets that yield low profit.

Which of the following Amazon storage services should the developer use?

- Use Amazon FSx For Lustre and Amazon EBS Provisioned IOPS SSD (io1) volumes for hot and cold storage respectively.
- Use Amazon FSx For Lustre and Amazon S3 for hot and cold storage respectively.
- Use Amazon Elastic File System and Amazon S3 for hot and cold storage respectively.
- Use Amazon FSx For Windows File Server and Amazon S3 for hot and cold storage respectively.
```

> EBS is not suitable for archiving datasets -> S3 is better option

### 9

```txt
An e-commerce company operates a highly scalable web application that relies on an Amazon Aurora database. As their users multiply, they've noticed that the read replica struggles to keep up with the increasing read traffic, leading to performance bottlenecks during peak periods.

As a solutions architect, which of the following will address the issue with the most cost-effective solution?

- Increase the size of the Amazon Aurora DB cluster.
- Use automatic scaling for the Amazon Aurora read replica using Aurora Auto Scaling.
- Implement read scaling with Amazon Aurora Global Database.
- Set up a read replica that can operate across different regions.
```

> Aurora Auto Scaling vs Aurora Serverless

- [Aurora Auto Scaling](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Integrating.AutoScaling.html): Dynamically adjusts the number of Aurora Replicas (reader DB instances) provisioned for an Aurora DB cluster.

- [Aurora Serverless](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-serverless-v2.html): On-demand, autoscaling the capacity of Aurora DB cluster resource

### 11

```txt
A retail company receives raw .csv data files into its Amazon S3 bucket from various sources on an hourly basis. The average file size of these data files is 2 GB.

An automated process must be set up to convert these .csv files to a more efficient Apache Parquet format and store the output files in another S3 bucket. Additionally, the conversion process must be automatically triggered whenever a new file is uploaded into the S3 bucket.

Which of the following options must be implemented to meet these requirements with the LEAST operational overhead?

- Use a Lambda function triggered by an S3 PUT event to convert the .csv files to Parquet format. Use the AWS Transfer Family with SFTP service to move the output files to the target S3 bucket.
- Utilize an AWS Glue extract, transform, and load (ETL) job to process and convert the .csv files to Apache Parquet format and then store the output files into the target S3 bucket. Set up an S3 Event Notification to track every S3 PUT event and invoke the ETL job in AWS Glue through Amazon SQS.
- Set up an Apache Spark job running in an Amazon EC2 instance and create an Amazon EventBridge (Amazon CloudWatch Events) rule to monitor S3 PUT events in the S3 bucket. Configure AWS Lambda to invoke the Spark job for every new .csv file added via a Function URL.
- Create an ETL (Extract, Transform, Load) job and a Data Catalog table in AWS Glue. Configure the AWS Glue crawler to run on a schedule to check for new files in the S3 bucket every hour and convert them to Parquet format.
```

> AWS Glue

- Simple, scalable, and serverless data integration
- Serverless ETL
- Glue Job can be triggered manually or via events using EventBridge

### 13

```txt
A company is using a combination of API Gateway and Lambda for the web services of the online web portal that is being accessed by hundreds of thousands of clients each day. They will be announcing a new revolutionary product and it is expected that the web portal will receive a massive number of visitors all around the globe.

How can you protect the backend systems and applications from traffic spikes?

- Use throttling limits in API Gateway
- API Gateway will automatically scale and handle massive traffic spikes so you do not have to do anything.
- Manually upgrade the EC2 instances being used by API Gateway
- Deploy Multi-AZ in API Gateway with Read Replica
```

> API Gateway works at any scale, just pay money.

Throttle API requests for our budget (and for better throughtput)

[Source](https://docs.aws.amazon.com/apigateway/latest/developerguide/api-gateway-request-throttling.html)

### 14

```txt
An online learning company hosts its Microsoft .NET e-Learning application on a Windows Server in its on-premises data center. The application uses an Oracle Database Standard Edition as its backend database.

The company wants a high-performing solution to migrate this workload to the AWS cloud to take advantage of the cloud’s high availability. The migration process should minimize development changes, and the environment should be easier to manage.

Which of the following options should be implemented to meet the company requirements? (Select TWO.)

- Migrate the Oracle database to Amazon RDS for Oracle in a Multi-AZ deployment by using AWS Database Migration Service (AWS DMS).
- Refactor the application to .NET Core and run it as a serverless container service using Amazon Elastic Kubernetes Service (Amazon EKS) with AWS Fargate.
- Use AWS Application Migration Service (AWS MGN) to migrate the on-premises Oracle database server to a new Amazon EC2 instance.
- Rehost the on-premises .NET application to an AWS Elastic Beanstalk Multi-AZ environment which runs in multiple Availability Zones.
- Provision and replatform the application to Amazon Elastic Container Service (Amazon ECS) with Amazon EC2 worker nodes. Use the Windows Server Amazon Machine Image (AMI) and deploy the .NET application using to the ECS cluster via the Amazon ECS Anywhere service.
```

> AWS Database Migration Service (AWS DMS)
>
> Migrate on-premises databases to the AWS Cloud.

> AWS Beanstalk: Run and manage web apps
>
> Reduces the operational overhead by taking care of provisioning the needed resources for your application.

### 15

```txt
A popular social media website uses a CloudFront web distribution to serve their static contents to their millions of users around the globe. They are receiving a number of complaints recently that their users take a lot of time to log into their website. There are also occasions when their users are getting HTTP 504 errors. You are instructed by your manager to significantly reduce the user's login time to further optimize the system.

Which of the following options should you use together to set up a cost-effective solution that can improve your application's performance? (Select TWO.)

- Customize the content that the CloudFront web distribution delivers to your users using Lambda@Edge, which allows your Lambda functions to execute the authentication process in AWS locations closer to the users.
- Use multiple and geographically disperse VPCs to various AWS regions then create a transit VPC to connect all of your resources. In order to handle the requests faster, set up Lambda functions in each region using the AWS Serverless Application Model (SAM) service.
- Configure your origin to add a Cache-Control max-age directive to your objects, and specify the longest practical value for max-age to increase the cache hit ratio of your CloudFront distribution.
- Deploy your application to multiple AWS regions to accommodate your users around the world. Set up a Route 53 record with latency routing policy to route incoming traffic to the region that provides the best latency to the user.
- Set up an origin failover by creating an origin group with two origins. Specify one as the primary origin and the other as the second origin which CloudFront automatically switches to when the primary origin returns specific HTTP status code failure responses.
```

> Lambda@Edge: run Lambda functions to customize the content that CloudFront delivers

> CloudFront - Origin failover

### 19

```txt
A company wishes to query data that resides in multiple AWS accounts from a central data lake. Each account has its own Amazon S3 bucket that stores data unique to its business function. Users from different accounts must be granted access to the data lake based on their roles.

Which solution will minimize overhead and costs while meeting the required access patterns?

- Use AWS Lake Formation to consolidate data from multiple accounts into a single account.
- Use AWS Kinesis Firehose to consolidate data from multiple accounts into a single account.
- Create a scheduled Lambda function for transferring data from multiple accounts to the S3 buckets of a central account
- Use AWS Control Tower to centrally manage each account's S3 buckets.
```

> AWS Lake Formation: Build a secure data lake in days

> AWS Kinesis: Analyze real-time video and data streams
>
> - Kinesis Video Streams: Capture, process, and store video streams for analytics and machine learning.
> - Kinesis Data Streams: Build custom applications that analyze data streams using popular stream-processing frameworks.
> - Kinesis Data Firehose: Load data streams into AWS data stores.

> AWS Control Tower: Set up and govern a secure, compliant multi-account environment

> AWS Organizations: Central governance and management across AWS accounts

### 3

```txt
An online cryptocurrency exchange platform is hosted in AWS which uses ECS Cluster and RDS in Multi-AZ Deployments configuration. The application is heavily using the RDS instance to process complex read and write database operations. To maintain the reliability, availability, and performance of your systems, you have to closely monitor how the different processes or threads on a DB instance use the CPU, including the percentage of the CPU bandwidth and total memory consumed by each process.

Which of the following is the most suitable solution to properly monitor your database?

- Use Amazon CloudWatch to monitor the CPU Utilization of your database.
- Create a script that collects and publishes custom metrics to CloudWatch, which tracks the real-time CPU Utilization of the RDS instance, and then set up a custom CloudWatch dashboard to view the metrics.
- Enable Enhanced Monitoring in RDS.
- Check the CPU% and MEM% metrics which are readily available in the Amazon RDS console that shows the percentage of the CPU bandwidth and total memory consumed by each database process of your RDS instance.
```

> RDS Enhanced Monitoring

- CloudWatch gathers metrics about CPU utilization from the **hypervisor** for a DB instance
- Enhanced Monitoring gathers its metrics from an agent on the **instance** ~ EC2 CloudWatch Agent

### 10

```text
A suite of web applications is hosted in an Auto Scaling group of EC2 instances across three Availability Zones and is configured with default settings. There is an Application Load Balancer that forwards the request to the respective target group on the URL path. The scale-in policy has been triggered due to the low number of incoming traffic to the application.

Which EC2 instance will be the first one to be terminated by your Auto Scaling Group?

- The EC2 instance which has the least number of user sessions
- The EC2 instance which has been running for the longest time
- The EC2 instance launched from the oldest launch configuration
- The instance will be randomly selected by the Auto Scaling group
```

> Auto Scaling Group's [Termination Policy](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-instance-termination.html#default-termination-policy)

- Maximum availability: Kill instance in the AZs with the most instances (and oldest Launch Configuration)
- Keep most updated instance: Kill instance with oldest LC
- Maximum instance usage: Kill the instance closest to billing hour.
- Finally: random.

### 12

```txt
An online shopping platform is hosted on an Auto Scaling group of Spot EC2 instances and uses Amazon Aurora PostgreSQL as its database. There is a requirement to optimize your database workloads in your cluster where you have to direct the production traffic to your high-capacity instances and point the reporting queries sent by your internal staff to the low-capacity instances.

Which is the most suitable configuration for your application as well as your Aurora database cluster to achieve this requirement?

- Configure your application to use the reader endpoint for both production traffic and reporting queries, which will enable your Aurora database to automatically perform load-balancing among all the Aurora Replicas.
- In your application, use the instance endpoint of your Aurora database to handle the incoming production traffic and use the cluster endpoint to handle reporting queries.
- Create a custom endpoint in Aurora based on the specified criteria for the production traffic and another custom endpoint to handle the reporting queries.
- Do nothing since by default, Aurora will automatically direct the production traffic to your high-capacity instances and the reporting queries to your low-capacity instances.
```

> Aurora Custom Endpoint: provides load-balanced database connections based on criteria other than the read-only or read-write capability of the DB instances

### 14.

```txt
A company has recently migrated its microservices-based application to Amazon Elastic Kubernetes Service (Amazon EKS). As part of the migration, the company must ensure that all sensitive configuration data and credentials, such as database passwords and API keys, are stored securely and encrypted within the Amazon EKS cluster's etcd key-value store.

What is the most suitable solution to meet the company's requirements?

- Enable secret encryption with a new AWS KMS key on an existing Amazon EKS cluster to encrypt sensitive data stored in the EKS cluster's etcd key-value store.
- Use AWS Secrets Manager with a new AWS KMS key to securely manage and store sensitive data within the EKS cluster's etcd key-value store.
- Enable default Amazon EBS volume encryption for the account with a new AWS KMS key to ensure encryption of sensitive data within the Amazon EKS cluster.
- Use Amazon EKS default options and the Amazon Elastic Block Store (Amazon EBS) Container Storage Interface (CSI) driver as an add-on to securely store sensitive data within the Amazon EKS cluster.
```

> K8s has its own mechanism for storing secret, which are default store as plain text in etcd key-value store.
>
> We can apply _envelope encryption_ to encrypt these secrets with AWS KMS before stored them in etcd store.

[Source](https://aws.amazon.com/blogs/containers/using-eks-encryption-provider-support-for-defense-in-depth/)

### 1.

```txt
A financial application is composed of an Auto Scaling group of EC2 instances, an Application Load Balancer, and a MySQL RDS instance in a Multi-AZ Deployments configuration. To protect the confidential data of your customers, you have to ensure that your RDS database can only be accessed using the profile credentials specific to your EC2 instances via an authentication token.

As the Solutions Architect of the company, which of the following should you do to meet the above requirement?

- Enable the IAM DB Authentication.
- Configure SSL in your application to encrypt the database connection to RDS.
- Create an IAM Role and assign it to your EC2 instances which will grant exclusive access to your RDS instance.
- Use a combination of IAM and STS to restrict access to your RDS instance via a temporary token.
```

> RDS - [IAM DB Authentication](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.IAMDBAuth.html)
>
> To connect to DB instance, we'll use an authentication token (generated using the IAM role's credential).

### 2.

```txt
An online medical system hosted in AWS stores sensitive Personally Identifiable Information (PII) of the users in an Amazon S3 bucket. Both the master keys and the unencrypted data should never be sent to AWS to comply with the strict compliance and regulatory requirements of the company.

Which S3 encryption technique should the Architect use?

- Use S3 client-side encryption with a KMS-managed customer master key.
- Use S3 client-side encryption with a client-side master key.
- Use S3 server-side encryption with a KMS managed key.
- Use S3 server-side encryption with customer provided key.
```

> KMS-managed CMK: key will be sent to AWS
>
> Server-side encryption: unencrypted data will be sent to AWS
>
> -> Client-side encryption with a client-side master key.

### 10

```txt
A tech company that you are working for has undertaken a Total Cost Of Ownership (TCO) analysis evaluating the use of Amazon S3 versus acquiring more storage hardware. The result was that all 1200 employees would be granted access to use Amazon S3 for the storage of their personal documents.

Which of the following will you need to consider so you can set up a solution that incorporates a single sign-on feature from your corporate AD or LDAP directory and also restricts access for each individual user to a designated user folder in an S3 bucket? (Select TWO.)
```

> [Identity Federation (with SAML)](https://docs.aws.amazon.com/singlesignon/latest/userguide/samlfederationconcept.html): Pass information about a user between
>
> - a SAML authority (called an identity provider or IdP)
> - a SAML consumer (called a service provider or SP)

> IAM identity provider (IdP): manage user identities outside of AWS and give these external user identities permissions to use AWS resources in your account.
>
> - Setup Identity Provider and Identity Federation.
> - Setup an AWS Security Token Service to generate temporary tokens (STS supports SAML)
> - Configure an IAM role and an IAM Policy to access the bucket.

### 11

```txt
A business has recently migrated its applications to AWS. The audit team must be able to assess whether the services the company is using meet common security and regulatory standards. A solutions architect needs to provide the team with a report of all compliance-related documents for their account.

Which action should a solutions architect consider?

- Run an Amazon Inspector assessment job to download all of the AWS compliance-related information.
- Use AWS Artifact to view the security reports as well as other AWS compliance-related information.
- Run an Amazon Macie job to view the Service Organization Control (SOC), Payment Card Industry (PCI), and other compliance reports from AWS Certificate Manager (ACM).
- View all of the AWS security compliance reports from AWS Security Hub.
```

> Amazon Macie: Discover and protect your sensitive data at scale -> EC2

> Amazon Inspector: Automated and continual vulnerability management at scale -> S3

> Amazon Artifact: On-demand access to AWS compliance reports: SOC, PCI, BAA, NDA -> Reports

> Amazon Security Hub: Unified security and compliance center -> Dashboard / Overview

### 15.

```txt
A company uses an Application Load Balancer (ALB) for its public-facing multi-tier web applications. The security team has recently reported that there has been a surge of SQL injection attacks lately, which causes critical data discrepancy issues. The same issue is also encountered by its other web applications in other AWS accounts that are behind an ALB. An immediate solution is required to prevent the remote injection of unauthorized SQL queries and protect their applications hosted across multiple accounts.

As a Solutions Architect, what solution would you recommend?

- Use AWS Network Firewall to filter web vulnerabilities and brute force attacks using stateful rule groups across all Application Load Balancers on all AWS accounts. Refactor the web application to be less susceptible to SQL injection attacks based on the security assessment.
- Use AWS WAF and set up a managed rule to block request patterns associated with the exploitation of SQL databases, like SQL injection attacks. Associate it with the Application Load Balancer. Integrate AWS WAF with AWS Firewall Manager to reuse the rules across all the AWS accounts.
- Use Amazon Macie to scan for vulnerabilities and unintended network exposure. Refactor the web application to be less susceptible to SQL injection attacks based on the security assessment. Utilize the AWS Audit Manager to reuse the security assessment across all AWS accounts.
- Use Amazon GuardDuty and set up a managed rule to block request patterns associated with the exploitation of SQL databases, like SQL injection attacks. Associate it with the Application Load Balancer and utilize the AWS Security Hub service to reuse the managed rules across all the AWS accounts
```

> AWS Network Firewall: a stateful, managed, network firewall and intrusion detection and prevention service for your virtual private cloud (VPC).

> AWS Firewall Manager: Simplifies your AWS WAF administration and maintenance tasks across multiple accounts and resources

> AWS WAF: Filter malicious web traffic

> Amazon Guard Duty: Managed threat detection service; identify unexpected and potentially unauthorized or malicious activity in your AWS environment.

### 17

```txt
A company requires all the data stored in the cloud to be encrypted at rest. To easily integrate this with other AWS services, they must have full control over the encryption of the created keys and also the ability to immediately remove the key material from AWS KMS. The solution should also be able to audit the key usage independently of AWS CloudTrail.

Which of the following options will meet this requirement?

- Use AWS Key Management Service to create AWS-owned CMKs and store the non-extractable key material in AWS CloudHSM.
- Use AWS Key Management Service to create a CMK in a custom key store and store the non-extractable key material in Amazon S3.
- Use AWS Key Management Service to create AWS-managed CMKs and store the non-extractable key material in AWS CloudHSM.
- Use AWS Key Management Service to create a CMK in a custom key store and store the non-extractable key material in AWS CloudHSM.
```

> KMS - [Custom Key Store](https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html)
>
> -> We own and manage

### 20

```txt
A medical records company is planning to store sensitive clinical trial data in an Amazon S3 repository with the object-level versioning feature enabled. The Solutions Architect is tasked with ensuring that no object can be overwritten or deleted by any user in a period of one year only. To meet the strict compliance requirements, the root user of the company’s AWS account must also be restricted from making any changes to an object in the S3 bucket.

Which of the following is the most secure way of storing the data in Amazon S3?

- Enable S3 Object Lock in governance mode with a retention period of one year.
- Enable S3 Object Lock in compliance mode with a retention period of one year.
- Enable S3 Object Lock in governance mode with a legal hold of one year.
- Enable S3 Object Lock in compliance mode with a legal hold of one year.
```

> S3 Object Lock

- Retention:

  - Retention Mode:

    - Governance: Big Brother can by pass it.
    - Compliance: It's universe law, nobody can do anything

  - Retention Period: A fixed period of time during which an object remains locked

- Legal holds: ~ Retention Periods but has no expiration date

### 21

```txt
A government entity is conducting a population and housing census in the city. Each household information uploaded on their online portal is stored in encrypted files in Amazon S3. The government assigned its Solutions Architect to set compliance policies that verify data containing personally identifiable information (PII) in a manner that meets their compliance standards. They should also be alerted if there are potential policy violations with the privacy of their S3 buckets.

Which of the following should the Architect implement to satisfy this requirement?

- Set up and configure Amazon Macie to monitor their Amazon S3 data.
- Set up and configure Amazon Kendra to monitor malicious activity on their Amazon S3 data
- Set up and configure Amazon Polly to scan for usage patterns on Amazon S3 data
- Set up and configure Amazon Fraud Detector to send out alert notifications whenever a security violation is detected on their Amazon S3 data.
```

> Amazon Kendra: Reinvent enterprise search with ML

> Amazon Polly: Turn text into life-like speech

> Amazon Fraud Detector: Detect more online fraud faster
