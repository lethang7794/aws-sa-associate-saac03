# TUTORIALS DOJO - Practice Exam - Time-mode Set 8 - Final Test

- Scored: 60/65 (92%)

  - SAA - Design Cost-Optimized Architectures: 85.71%
  - SAA - Design High-Performing Architectures: 94.12%
  - SAA - Design Resilient Architectures: 95.24%
  - SAA - Design Secure Architectures: 90%

- Time: 00:46:52
- Date: 2023/10/25, 0h

## SAA - Design Cost-Optimized Architectures

### 3

```
A company is building an internal application that serves as a repository for images uploaded by a couple of users. Whenever a user uploads an image, it would be sent to Kinesis Data Streams for processing before it is stored in an S3 bucket. If the upload was successful, the application will return a prompt informing the user that the operation was successful. The entire processing typically takes about 5 minutes to finish.

Which of the following options will allow you to asynchronously process the request to the application from upload request to Kinesis, S3, and return a reply in the most cost-effective manner?

- Use a combination of Lambda and Step Functions to orchestrate service components and asynchronously process the requests.

- Use a combination of SQS to queue the requests and then asynchronously process them using On-Demand EC2 Instances.

- Replace the Kinesis Data Streams with an Amazon SQS queue. Create a Lambda function that will asynchronously process the requests.

- Use a combination of SNS to buffer the requests and then asynchronously process them using On-Demand EC2 Instances.
```

> Asynchronous process, cost-effective
>
> SQS + Lambda

## SAA - Design High-Performing Architectures

### 4

```
A company has an on-premises MySQL database that needs to be replicated in Amazon S3 as CSV files. The database will eventually be launched to an Amazon Aurora Serverless cluster and be integrated with an RDS Proxy to allow the web applications to pool and share database connections. Once data has been fully copied, the ongoing changes to the on-premises database should be continually streamed into the S3 bucket. The company wants a solution that can be implemented with little management overhead yet still highly secure.

Which ingestion pattern should a solutions architect take?

- Set up a full load replication task using AWS Database Migration Service (AWS DMS). Launch an AWS DMS endpoint with SSL using the AWS Network Firewall service.

- Create a full load and change data capture (CDC) replication task using AWS Database Migration Service (AWS DMS). Add a new Certificate Authority (CA) certificate and create an AWS DMS endpoint with SSL.

- Use an AWS Snowball Edge cluster to migrate data to Amazon S3 and AWS DataSync to capture ongoing changes. Create your own custom AWS KMS envelope encryption key for the associated AWS Snowball Edge job.

- Use AWS Schema Conversion Tool (AWS SCT) to convert MySQL data to CSV files. Set up the AWS Server Migration Service (AWS MGN) to capture ongoing changes from the on-premises MySQL database and send them to Amazon S3.
```

> Replicate database on S3 as CSV, stream on-going changes, min management overhead
>
> AWS Database Migration Service + Change Data Capture (CDC)

## SAA - Design Resilient Architectures

### 6

```
An e-commerce company is receiving a large volume of sales data files in .csv format from its external partners on a daily basis. These data files are then stored in an Amazon S3 Bucket for processing and reporting purposes.

The company wants to create an automated solution to convert these .csv files into Apache Parquet format and store the output of the processed files in a new S3 bucket called “tutorialsdojo-data-transformed”. This new solution is meant to enhance the company’s data processing and analytics workloads while keeping its operating costs low.

Which of the following options must be implemented to meet these requirements with the LEAST operational overhead?

- Integrate Amazon EMR File System (EMRFS) with the source S3 bucket to automatically discover the new data files. Use an Amazon EMR Serverless with Apache Spark to convert the .csv files to the Apache Parquet format and then store the output in the "tutorialsdojo-data-transformed" bucket.

- Utilize an AWS Batch job definition with Bash syntax to convert the .csv files to the Apache Parquet format. Configure the job definition to run automatically whenever a new .csv file is uploaded to the source bucket.

- Use Amazon S3 event notifications to trigger an AWS Lambda function that converts .csv files to Apache Parquet format using Apache Spark on an Amazon EMR cluster. Save the processed files to the “tutorialsdojo-data-transformed" bucket.

- Use AWS Glue crawler to automatically discover the raw data file in S3 as well as check its corresponding schema. Create a scheduled ETL job in AWS Glue that will convert .csv files to Apache Parquet format and store the output of the processed files in the “tutorialsdojo-data-transformed" bucket.
```

> CSV store in S3, automated convert to Parquet -> store in a S3 bucket; min operation cost
>
> - Working Solutions:
>   - AWS Batch + bash script
>   - Amazon EMR

> Amazon EMR: Hosted Hadoop framework
>
> - Amazon EMR Serverless

## SAA - Design Secure Architectures

### 4

```
A government agency plans to store confidential tax documents on AWS. Due to the sensitive information in the files, the Solutions Architect must restrict the data access requests made to the storage solution to a specific Amazon VPC only. The solution should also prevent the files from being deleted or overwritten to meet the regulatory requirement of having a write-once-read-many (WORM) storage model.

Which combination of the following options should the Architect implement? (Select TWO.)

- Set up a new Amazon S3 bucket to store the tax documents and integrate it with AWS Network Firewall. Configure the Network Firewall to only accept data access requests from a specific Amazon VPC.

- Configure an Amazon S3 Access Point for the S3 bucket to restrict data access to a particular Amazon VPC only.

- Create a new Amazon S3 bucket with the S3 Object Lock feature enabled. Store the documents in the bucket and set the Legal Hold option for object retention.

- Store the tax documents in the Amazon S3 Glacier Instant Retrieval storage class to restrict fast data retrieval to a particular Amazon VPC of your choice.

- Enable Object Lock but disable Object Versioning on the new Amazon S3 bucket to comply with the write-once-read-many (WORM) storage model requirement.
```

> S3 - WORM
>
> 👉 S3 - Object Lock + Legal Hold

> S3 - Restrict access to a VPC
>
> 👉 S3 Access Point

### 16

```
A social media company needs to capture the detailed information of all HTTP requests that went through their public-facing Application Load Balancer every five minutes. The client's IP address and network latencies must also be tracked. They want to use this data for analyzing traffic patterns and for troubleshooting their Docker applications orchestrated by the Amazon ECS Anywhere service.

Which of the following options meets the customer requirements with the LEAST amount of overhead?

- Enable AWS CloudTrail for their Application Load Balancer. Use the AWS CloudTrail Lake to analyze and troubleshoot the application traffic.
- Enable access logs on the Application Load Balancer. Integrate the Amazon ECS cluster with Amazon CloudWatch Application Insights to analyze traffic patterns and simplify troubleshooting.
- Install and run the AWS X-Ray daemon on the Amazon ECS cluster. Use the Amazon CloudWatch ServiceLens to analyze the traffic that goes through the application.
- Integrate Amazon EventBridge (Amazon CloudWatch Events) metrics on the Application Load Balancer to capture the client IP address. Use Amazon CloudWatch Container Insights to analyze traffic patterns.
```

> ELB - Access Logs
>
> Capture detailed information about requests sent to your load balancer
>
> - Disabled by default
>
> Ref:
>
> - <https://docs.aws.amazon.com/elasticloadbalancing/latest/application/load-balancer-access-logs.html>

> AWS Services with Access Logs:
>
> - S3
> - ELB
> - CloudFront: or standard logs
> - API Gateway
