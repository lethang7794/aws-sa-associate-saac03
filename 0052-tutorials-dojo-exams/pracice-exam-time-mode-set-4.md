# TUTORIALS DOJO - Practice Exam - Time-mode Set 4

- Scored: 46/65 (71%)
  - SAA – Design Cost-Optimized Architectures: 75%
  - SAA – Design High-Performing Architectures: 81.82%
  - SAA – Design Resilient Architectures: 55.56%
  - SAA – Design Secure Architectures: 70.59%
- Time: 01:03:40
- Date: Oct 22, 2023

## SAA - Design Cost-Optimized Architectures

### 3

```
A company is looking to store their confidential financial files in AWS which are accessed every week. The Architect was instructed to set up the storage system which uses envelope encryption and automates key rotation. It should also provide an audit trail that shows who used the encryption key and by whom for security purposes.

Which combination of actions should the Architect implement to satisfy the requirement in the most cost-effective way? (Select TWO.)

- Use Amazon S3 to store the data.
- Use Amazon S3 Glacier Deep Archive to store the data.
- Configure Server-Side Encryption with Customer-Provided Keys (SSE-C).
- Configure Server-Side Encryption with Amazon S3-Managed Keys (SSE-S3).
- Configure Server-Side Encryption with AWS KMS-Managed Keys (SSE-KMS).
```

> [!NOTE] S3 - Server-Side Encryption
>
> - SSE-S3
> - SSE-KMS: support audit
> - SSE-C:

| Encryption | Fullname                        | Who Manages Key?                                | Who Manages Encryption Process? | Notes                       |
| ---------- | ------------------------------- | ----------------------------------------------- | ------------------------------- | --------------------------- |
| SSE-S3     | SSE with Amazon S3 managed keys | S3                                              | S3                              | Default                     |
| SSE-KMS    | SSE with AWS KMS keys           | AWS managed key                                 | S3                              | Support audit keys usage... |
|            |                                 | Customer managed key (CMK) - Renamed to KMS Key |                                 |                             |
| SSE-C      | SSE with Customer-Provided Key  | Customer                                        | S3                              | Use your own encryption key |
|            |                                 |                                                 |                                 |                             |
| CSE        |                                 | Customer                                        | Customer                        |                             |

### 5

```
A web application is hosted in an Auto Scaling group of EC2 instances deployed across multiple Availability Zones behind an Application Load Balancer. You need to implement an SSL solution for your system to improve its security which is why you requested an SSL/TLS certificate from a third-party certificate authority (CA).

Where can you safely import the SSL/TLS certificate of your application? (Select TWO.)

- AWS Certificate Manager
- IAM SSL certificate storage
- A private S3 bucket with versioning enabled
- An S3 bucket configured with server-side encryption with customer-provided encryption keys (SSE-C)
- CloudFront
```

> [!NOTE] Which services support storing SSL certificate?
>
> - AWS Certificate Manager (ACM)
> - IAM SSL certificate storage (Used for region that not support ACM)

## SAA - Design High-Performing Architectures

### 13

```
A company hosts all its applications on its data center on the US East Coast. Most of the workloads are legacy applications that are hosted on individual virtual machines running in Linux and Windows operating systems. The company plans to migrate all of its VM workloads to the AWS cloud. To minimize changes in the applications during the migration process, it has been decided that the company will use a “lift-and-shift” strategy. The company also wants to minimize downtime during the migration process.

Which of the following options should the Solutions Architect implement for this scenario?

- Export the on-premises VMs and upload the images to an Amazon S3 bucket. Use VM Import/Export service to import the images and launch them as Amazon EC2 instances.
- Install the AWS Replication Agent on each of the on-premises VMs to continuously replicate the servers to AWS. Use AWS Migration Service (AWS MGN) to launch test instances and perform cutover once testing is completed.
- Use the AWS Application Discovery Service for lift-and-shift migrations. Deploy the AWS Application Discovery Agent to the on-premises data center to start the replication process. After the replication task is completed, launch Amazon EC2 instances based on the created AMIs.
- Utilize AWS DataSync to migrate the application workloads to AWS. Deploy the AWS DataSync VM on the on-premises data center. Once replication is completed, launch Amazon EC2 instances based on the created AMIs.
```

> [!NOTE] AWS Application Migration Service: Automate application migration and modernization

> [!NOTE] AWS Application Discovery Service: Discover on-premises applications to streamline migration

> [!NOTE] AWS Database Migration Service: Migrate databases with minimal downtime

> [!NOTE] AWS DataSync: Simple, fast, online data transfer

### 18

```
An automotive company is working on an autonomous vehicle development and deployment project using AWS. The solution requires High Performance Computing (HPC) in order to collect, store and manage massive amounts of data as well as to support deep learning frameworks. The Linux EC2 instances that will be used should have a lower latency and higher throughput than the TCP transport traditionally used in cloud-based HPC systems. It should also enhance the performance of inter-instance communication and must include an OS-bypass functionality to allow the HPC to communicate directly with the network interface hardware to provide low-latency, reliable transport functionality.

Which of the following is the MOST suitable solution that you should implement to achieve the above requirements?

- Attach an Elastic Network Adapter (ENA) on each Amazon EC2 instance to accelerate High Performance Computing (HPC).
- Attach an Elastic Fabric Adapter (EFA) on each Amazon EC2 instance to accelerate High Performance Computing (HPC).
- Attach an Elastic Network Interface (ENI) on each Amazon EC2 instance to accelerate High Performance Computing (HPC).
- Attach a Private Virtual Interface (VIF) on each Amazon EC2 instance to accelerate High Performance Computing (HPC).
```

> [!NOTE] ENI - ENA - EFA
>
> - Elastic Network Interface (ENI): logical networking component in a VPC that represents a **virtual network card**
>
> - Elastic Network Adapter (ENA): High Performance Network Interface for Amazon EC2
>
>   - _Enhanced networking_: up to 100 Gbps
>   - provide traditional IP networking features
>
> - Elastic Fabric Adapter (EFA): network device to accelerate High Performance Computing (HPC) applications
>
>   - support **OS-bypass** capabilities: allow HPC communicate directly with the EFA device.

### 19

```
A company has a High Performance Computing (HPC) cluster that is composed of EC2 Instances with Provisioned IOPS (io1) volume to process transaction-intensive, low-latency workloads. The Solutions Architect must maintain high IOPS while keeping the latency down by setting the optimal queue length for the volume. The size of each volume is 10 GiB.

Which of the following is the MOST suitable configuration that the Architect should set up?
```

### 21

```
A company has a web-based order processing system that is currently using a standard queue in Amazon SQS. The IT Manager noticed that there are a lot of cases where an order was processed twice. This issue has caused a lot of trouble in processing and made the customers very unhappy. The manager has asked you to ensure that this issue will not recur.

What can you do to prevent this from happening again in the future? (Select TWO.)

- Alter the retention period in Amazon SQS.
- Alter the visibility timeout of SQS.
- Replace Amazon SQS and instead, use Amazon Simple Workflow service.
- Change the message size in SQS.
- Use an Amazon SQS FIFO Queue instead.
```

> [!NOTE] Ensure a queue's messages are NOT process twice:
>
> - SQS FIFO Queue
> - Amazon Simple Workflow Service (Amazon SWF)

## SAA - Design Resilient Architectures

### 2

```
A company recently launched an e-commerce application that is running in eu-east-2 region, which strictly requires six EC2 instances running at all times. In that region, there are 3 Availability Zones (AZ) that you can use - eu-east-2a, eu-east-2b, and eu-east-2c.

Which of the following deployments provide 100% fault tolerance if any single AZ in the region becomes unavailable? (Select TWO.)

- eu-east-2a with two EC2 instances, eu-east-2b with two EC2 instances, and eu-east-2c with two EC2 instances
- eu-east-2a with two EC2 instances, eu-east-2b with four EC2 instances, and eu-east-2c with two EC2 instances
- eu-east-2a with four EC2 instances, eu-east-2b with two EC2 instances, and eu-east-2c with two EC2 instances
- eu-east-2a with six EC2 instances, eu-east-2b with six EC2 instances, and eu-east-2c with no EC2 instances
- eu-east-2a with three EC2 instances, eu-east-2b with three EC2 instances, and eu-east-2c with three EC2 instances
```

> [!NOTE] Fault Tolerance: ability of a system to remain in operation even if some of the components used to build the system fail

### 5

```
A company has a web application hosted in AWS cloud where the application logs are sent to Amazon CloudWatch. Lately, the web application has recently been encountering some errors which can be resolved simply by restarting the instance.

What will you do to automatically restart the EC2 instances whenever the same application error occurs?

- First, look at the existing CloudWatch logs for keywords related to the application error to create a custom metric. Then, create a CloudWatch alarm for that custom metric which invokes an action to restart the EC2 instance.
- First, look at the existing CloudWatch logs for keywords related to the application error to create a custom metric. Then, create an alarm in Amazon SNS for that custom metric which invokes an action to restart the EC2 instance.
- First, look at the existing Flow logs for keywords related to the application error to create a custom metric. Then, create a CloudWatch alarm for that custom metric which invokes an action to restart the EC2 instance.
- First, look at the existing Flow logs for keywords related to the application error to create a custom metric. Then, create a CloudWatch alarm for that custom metric which calls a Lambda function that invokes an action to restart the EC2 instance.
```

> [!NOTE] CloudWatch Alarm can stop, terminate, reboot, recover an EC2 instance

### 8

```
A company plans to deploy an application in an Amazon EC2 instance. The application will perform the following tasks:

Read large datasets from an Amazon S3 bucket.

Execute multi-stage analysis on the datasets.

Save the results to Amazon RDS.

During multi-stage analysis, the application will store a large number of temporary files in the instance storage. As the Solutions Architect, you need to recommend the fastest storage option with high I/O performance for the temporary files.

Which of the following options fulfills this requirement?

- Enable Transfer Acceleration in Amazon S3.
- Configure RAID 1 in multiple instance store volumes.
- Attach multiple Provisioned IOPS SSD volumes in the instance.
- Configure RAID 0 in multiple instance store volumes.
```

> [!NOTE] RAID 0:
>
> - I/O is distributed across the volumes in a stripe
> - higher level of performance for a file system than you can provision on a single Amazon EBS volume

> [!NOTE] RAID 1, 2, 3, 4, 5, 6: NOT recommended for EBS

### 12

```
A company deployed an online enrollment system database on a prestigious university, which is hosted in RDS. The Solutions Architect is required to monitor the database metrics in Amazon CloudWatch to ensure the availability of the enrollment system.

What are the enhanced monitoring metrics that Amazon CloudWatch gathers from Amazon RDS DB instances which provide more accurate information? (Select TWO.)
```

> [!NOTE] Monitor EC2:
>
> - CloudWatch default metric
>
>   - CPU utilization from hypervisor
>   - Disk
>   - Network
>
> - CloudWatch Agent:
>
>   - Memory
>   - Sub-resource metrics such as per-CPU core

> [!NOTE] Monitor RDS:
>
> - Default metric
>
>   - CPU utilization from hypervisor
>   - Database connections
>   - Free memory
>
> - Enhanced Monitoring:
>
>   - OS processes
>   - RDS processes

### 13

```
A data analytics company, which uses machine learning to collect and analyze consumer data, is using Redshift cluster as their data warehouse. You are instructed to implement a disaster recovery plan for their systems to ensure business continuity even in the event of an AWS region outage.

Which of the following is the best approach to meet this requirement?

- Create a scheduled job that will automatically take the snapshot of your Redshift Cluster and store it to an S3 bucket. Restore the snapshot in case of an AWS region outage.
- Do nothing because Amazon Redshift is a highly available, fully-managed data warehouse which can withstand an outage of an entire AWS region.
- Use Automated snapshots of your Redshift Cluster.
- Enable Cross-Region Snapshots Copy in your Amazon Redshift Cluster.
```

> [!NOTE] Amazon Redshift Backup:
>
> - Manually Snapshots
> - Automatically increment backup:
>   - Every 8 hours or 5 GB of data
>   - 1-day retention (default, configurable up to 35 days)
>
> Backup to S3 bucket, configurable to copy snapshots to another region for DR.

### 14

```
Every week, an e-commerce company announces a sales promotion, causing its application hosted on an Auto Scaling group to experience intermittent downtime. Because of long initialization times, the application only becomes operational minutes before a new EC2 instance turns into RUNNING state. A solutions architect must devise a solution that launches capacity in advance based on a forecasted load in order to scale faster.

Which solution meets the requirements with the least amount of effort?

- Configure the Auto Scaling group to use predictive scaling.
- Use Amazon Forecast to analyze and predict the workload pattern of the application. Create a scheduled scaling policy based on the prediction results.
- Create a dynamic scaling policy based on the historical average CPU load of the application.
- Create a Scheduled Amazon EventBridge (Amazon CloudWatch Events) Rule that runs a scaling job on a Lambda function every midnight.
```

> [!NOTE] Auto Scaling Group (ASG) Policies:
>
> - Manually
> - Scheduled
> - Dynamic
>   - Simple
>   - Stepped
>   - Target Tracking
> - Predictive

### 15

```
A company has a fixed set of Amazon EC2 instances inside a VPC in the AWS cloud. The instances run a mission-critical application. In a recent incident, one of the EC2 instances suddenly powered down which affected the availability of the application. To avoid this incident in the future, the management wants to get notified of any upcoming AWS events that may affect these EC2 instances.

Which of the following options is the recommended action to meet the above requirements?

- Create an Amazon EventBridge (Amazon CloudWatch Events) rule that is scheduled to run every 24 hours. Set the target to an AWS Lambda function that will check AWS Service Health Dashboard and send notifications for any events that may affect Amazon EC2 instances.
- Set up an Amazon EventBridge (Amazon CloudWatch Events) rule to check for any status change for Amazon EC2 instances. Set the target to an AWS Lambda function that will send a notification and restart the affected Amazon EC2 instances.
- Create an Amazon EventBridge (Amazon CloudWatch Events) rule to check for AWS Personal Health Dashboard events that are related to Amazon EC2 instances. To send notifications, set an Amazon SNS topic as a target for the rule.
- Set up an Amazon EventBridge (Amazon CloudWatch Events) rule to check for AWS Service Health Dashboard events that are related to Amazon EC2 instances. To send notifications, set an Amazon SNS topic as a target for the rule.
```

> [!NOTE] Notify for EC2 instance:
>
> - All EC2 instances:
>
>   - Create an Amazon EventBridge (Amazon CloudWatch Events) rule to check for **AWS Personal Health Dashboard** events that are related to Amazon EC2 instances.
>   - To send notifications, set an Amazon SNS topic as a target for the rule.
>
> - A specific EC2 instance:
>
>   Use CloudWatch Alarm and EC2 Action to interact with EC2 instance.

### 17

```
A newly hired Solutions Architect is checking all of the security groups and network access control list rules of the company's AWS resources. For security purposes, the MS SQL connection via port 1433 of the database tier should be secured. Below is the security group configuration of their Microsoft SQL Server database:


The application tier hosted in an Auto Scaling group of EC2 instances is the only identified resource that needs to connect to the database. The Architect should ensure that the architecture complies with the best practice of granting least privilege.

Which of the following changes should be made to the security group configuration?

- For the MS SQL rule, change the Source to the security group ID attached to the application tier.
- For the MS SQL rule, change the Source to the EC2 instance IDs of the underlying instances of the Auto Scaling group.
- For the MS SQL rule, change the Source to the static AnyCast IP address attached to the application tier.
- For the MS SQL rule, change the Source to the Network ACL ID attached to the application tier.
```

> [!NOTE] Security Group Referencing
>
> When you specify a security group as the source or destination for a rule (of a security group), the rule affects all instances that are associated with the security groups.

## SAA - Design Secure Architectures

### 2

```
A startup launched a new FTP server using an On-Demand EC2 instance in a newly created VPC with default settings. The server should not be accessible publicly but only through the IP address 175.45.116.100 and nowhere else.

Which of the following is the most suitable way to implement this requirement?

- Create a new inbound rule in the security group of the EC2 instance with the following details: Protocol: TCP Port Range: 20 - 21 Source: 175.45.116.100/32
- Create a new inbound rule in the security group of the EC2 instance with the following details: Protocol: UDP Port Range: 20 - 21 Source: 175.45.116.100/32
- Create a new Network ACL inbound rule in the subnet of the EC2 instance with the following details: Protocol: TCP Port Range: 20 - 21 Source: 175.45.116.100/0 Allow/Deny: ALLOW
- Create a new Network ACL inbound rule in the subnet of the EC2 instance with the following details: Protocol: UDP Port Range: 20 - 21 Source: 175.45.116.100/0 Allow/Deny: ALLOW
```

> [!NOTE] Default NACL allows all inbound and outbound traffic

> [!NOTE] CIDR `/0`: The entire network -> is not used in SG and NACL.
>
> CIDR `/32`: One IP address.

### 4

```
A food company bought 50 licenses of Windows Server to be used by the developers when launching Amazon EC2 instances to deploy and test applications. The developers are free to provision EC2 instances as long as there is a license available. The licenses are tied to the total CPU count of each virtual machine. The company wants to ensure that developers won’t be able to launch new instances once the licenses are exhausted. The company wants to receive notifications when all licenses are in use.

Which of the following options is the recommended solution to meet the company's requirements?

- Define licensing rules on AWS License Manager to track and control license usage. Enable the option to “Enforce license limit” to prevent going over the number of allocated licenses. Add an Amazon SNS topic to send notifications and alerts.
- Define license configuration rules on AWS Certificate Manager to track and control license usage. Enable the option to “Enforce certificate limit” to prevent going over the number of allocated licenses. Add an Amazon SQS queue with ChangeVisibility Timeout configured to send notifications and alerts.
- Upload the licenses on AWS Systems Manager Fleet Manager to be encrypted and distributed to Amazon EC2 instances. Attach an IAM role on the EC2 instances to request a license from the Fleet Manager. Set up an Amazon SNS to send notifications and alerts once all licenses are used
- Configure AWS Resource Access Manager (AWS RAM) to track and control the licenses used by AWS resources. Configure AWS RAM to provide available licenses for Amazon EC2 instances. Set up an Amazon SNS to send notifications and alerts once all licenses are used.
```

> [!NOTE] AWS License Manager: Track and manage software licenses across multiple AWS Regions

> [!NOTE] AWS Systems Manager's Fleet Manager: UI for managing nodes/EC2 instance.

> [!NOTE] AWS Resource Access Manager (AWS RAM): Simple, secure service to share AWS resources

### 8

```
A company has a regional API Gateway in the us-east-2 region that serves as a proxy to a backend service. Clients connect to the service using the invoke URL of the API stage. To improve usability, the company wants to associate a custom domain name (api.tutorialsdojo.com) with the API. Moreover, the domain name must support HTTPS to ensure secure connections. The company has an existing hosted zone for its domain on Amazon Route 53.

Which of the following would be the next step to achieve the company's objective?

- Request a public certificate in the us-east-1 region for api.tutorialsdojo.com using AWS Certificate Manager (ACM). Create a regional API Gateway domain name and associate it with api.tutorialsdojo.com and the ACM certificate. In Route 53, create an alias record for api.tutorialsdojo.com that points to the API Gateway domain name.
- Import an existing public certificate for api.tutorialsdojo.com into AWS Certificate Manager (ACM) in the us-east-2. In Route 53, create a CNAME record for api.tutorialsdojo.com that points to the invoke URL of the API Gateway stage.
- Use the AWS Certificate Manager Private Certificate Authority (ACM PCA) to generate a private certificate for api.tutorialsdojo.com. Override the invoke URL using stage variables.
- Request a public certificate in the us-east-2 region for api.tutorialsdojo.com using AWS Certificate Manager (ACM). Create a regional API Gateway domain name and associate it with api.tutorialsdojo.com and the ACM certificate. In Route 53, create an alias record for api.tutorialsdojo.com that points to the API Gateway domain name.
```

> [!NOTE] When using regional API Gateway, the certificate for the domain name needs to be in the same region.

### 12

```
A media company needs to configure an Amazon S3 bucket to serve static assets for the public-facing web application. Which methods ensure that all of the objects uploaded to the S3 bucket can be read publicly all over the Internet? (Select TWO.)

- Grant public read access to the object when uploading it using the S3 Console.
- Configure the cross-origin resource sharing (CORS) of the S3 bucket to allow objects to be publicly accessible from all domains.
- Configure the S3 bucket policy to set all objects to public read.
- Create an IAM role to set the objects inside the S3 bucket to public read.
- Do nothing. Amazon S3 objects are already public by default.
```

> [!NOTE] By default, all Amazon S3 resources such as buckets, objects, and related subresources are private.
>
> To public all objects in a bucket:
>
> - Unblocking the bucket. -> Configure the S3 bucket policy to set all objects to public read.
> - Explicit allows public read -> Using bucket policy.
> - Or manually public objects -> Grant public read access to the object when uploading it using the S3 Console.

### 15

```
An online survey startup is collecting real estate data in the United States for several years. The startup already has a total of 5 TB of data stored in an Amazon S3 bucket located in the us-east-1 Region. All real estate data must be shared with a European AWS Managed Service Provider (MSP) Partner which also uses Amazon S3 for storage. Due to budget constraints, the startup must keep its data transfer costs in S3 as low as possible and disable anonymous access.

Which solution meets this requirement MOST cost-effectively?

- Enable the Requester Pays feature on the Amazon S3 bucket to lower data transfer costs and disable anonymous access
- Enable Cross-Region Replication(CRR) on the startup’s S3 bucket to automatically copy the S3 content to the partner’s S3 bucket in Europe.
- Enable cross-account access of the startup’s S3 bucket to allow the data downloads and exclusive access from the partner’s AWS account
- Enable S3 Object Lock in governance mode to lower data transfer costs and set a Legal Hold for each object to disable anonymous access
```

> [!NOTE] S3 - Requester Pay
>
> - In general, bucket owners pay for all Amazon S3 storage and data transfer costs that are associated with their bucket.
> - With Requester Pays buckets,
>   - The requester (instead of the bucket owner) pays the cost of the request and the data download from the bucket.
>   - The bucket owner always pays the cost of storing data.
