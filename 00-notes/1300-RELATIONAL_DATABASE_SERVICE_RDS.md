# RELATIONAL DATABASE SERVICE (RDS)

## Database Refresher & MODELS - PART1 (8:51), PART2 (14:45)

![Alt text](<images/Screenshot 2023-10-07 at 13.51.50 - [ASSOCIATESHARED]_Database_Refresher_&_MODELS_-_PA.png>)
SQL vs NoSQL

> What is SQL?

> What is NoSQL?

### Relational (SQL) Database

![Alt text](../1300-RELATIONAL_DATABASE_SERVICE%2528RDS%2529/00_LEARNINGAIDS/DBRefresher-1.png)
_Relational Database_, e.g. MySQL, Postgres

### Non-Relational (NoSQL) Database

![Alt text](../1300-RELATIONAL_DATABASE_SERVICE%2528RDS%2529/00_LEARNINGAIDS/DBRefresher-2.png)
_Key-Value Database_, e.g. Redis, Google Bigtable, Amazon DynamoDB

![Alt text](../1300-RELATIONAL_DATABASE_SERVICE%2528RDS%2529/00_LEARNINGAIDS/DBRefresher-3.png)
_Wide Column Store_, e.g. Google Bigtable, Amazon DynamoDB

![Alt text](../1300-RELATIONAL_DATABASE_SERVICE%2528RDS%2529/00_LEARNINGAIDS/DBRefresher-4.png)
_Document Database_, e.g. MongoDB, Amazon DocumentDB

![Alt text](../1300-RELATIONAL_DATABASE_SERVICE%2528RDS%2529/00_LEARNINGAIDS/DBRefresher-5.png)
_Column Database_, e.g. BigQuery, Amazon Redshift

![Alt text](../1300-RELATIONAL_DATABASE_SERVICE%2528RDS%2529/00_LEARNINGAIDS/DBRefresher-6.png)
_Graph Database_, e.g. neo4j, Amazone Neptune

## ACID vs BASE (11:02)

![Alt text](<images/Screenshot 2023-10-07 at 14.37.08 - ACID_vs_BASE__lea_—_Firefox_Developer_Edition.png>)
CAP Theorem

> What is CAP Theorem?
>
> The CAP theorem states that any networked shared-data system can have at most two of three desirable properties:
>
> - consistency (C) equivalent to having a single up-to-date copy of the data (linearizable);
> - high availability (A) of that data (system always accepts updates);
> - and tolerance to network partitions (P)
>
> [An Illustrated Proof of the CAP Theorem](https://mwhittaker.github.io/blog/an_illustrated_proof_of_the_cap_theorem/)

![Alt text](../1300-RELATIONAL_DATABASE_SERVICE%2528RDS%2529/00_LEARNINGAIDS/ACIDvBASE-1.png)
ACID

![Alt text](../1300-RELATIONAL_DATABASE_SERVICE%2528RDS%2529/00_LEARNINGAIDS/ACIDvBASE-2.png)
BASE

## Databases on EC2 (13:08)

![Alt text](<images/Screenshot 2023-10-07 at 15.26.56 - [ASSOCIATESHARED]_Databases_on_EC2__learn.cantrill.png>)
Why?

![Alt text](<images/Screenshot 2023-10-07 at 15.30.15 - [ASSOCIATESHARED]_Databases_on_EC2__learn.cantrill.png>)
Why not?

![Alt text](../1300-RELATIONAL_DATABASE_SERVICE%2528RDS%2529/00_LEARNINGAIDS/DBonEC2-1.png)
Databases on EC2 - Example

## [_DEMO_] Splitting Wordpress Monolith => APP & DB (18:01)

## Relational Database Service (RDS) Architecture (11:39)

![Alt text](<images/Screenshot 2023-10-07 at 15.53.01 - [ASSOCIATESHARED]_Relational_Database_Service_(RDS.png>)
RDS - DBSaaS

![Alt text](<images/Screenshot 2023-10-07 at 15.57.15 - [ASSOCIATESHARED]_Relational_Database_Service_(RDS.png>)
RDS - Architecture

![Alt text](<images/Screenshot 2023-10-07 at 15.59.21 - [ASSOCIATESHARED]_Relational_Database_Service_(RDS.png>)
RDS - Costs

## [_DEMO_] Migrating EC2 DB into RDS - PART1 (18:20)

![Alt text](../1300-RELATIONAL_DATABASE_SERVICE%2528RDS%2529/00_LEARNINGAIDS/RDSArch-1.png)

![Alt text](../1300-RELATIONAL_DATABASE_SERVICE%2528RDS%2529/00_LEARNINGAIDS/RDSArch-2.png)

## [_DEMO_] Migrating EC2 DB into RDS - PART2 (12:58)

## Relational Database Service (RDS) MultiAZ - Instance and Cluster (11:54)

![Alt text](<images/Screenshot 2023-10-07 at 16.44.03 - [ASSOCIATESHARED]_Relational_Database_Service_(RDS.png>)
RDS - Multi AZ - Instance

![Alt text](<images/Screenshot 2023-10-07 at 16.44.40 - [ASSOCIATESHARED]_Relational_Database_Service_(RDS.png>)
RDS - Multi AZ - Instance - Failover

![Alt text](<images/Screenshot 2023-10-07 at 16.45.51 - [ASSOCIATESHARED]_Relational_Database_Service_(RDS.png>)
RDS - Multi AZ - Instance - Summary

![Alt text](<images/Screenshot 2023-10-07 at 16.48.38 - [ASSOCIATESHARED]_Relational_Database_Service_(RDS.png>)
RDS - Multi AZ - Cluster - Architecture

![Alt text](<images/Screenshot 2023-10-07 at 16.50.19 - [ASSOCIATESHARED]_Relational_Database_Service_(RDS.png>)
RDS - Multi AZ - Cluster - Summary

> Compare RDS Multi AZ Instance and Multi AZ Cluster.
>
> - Multi AZ **Instance**:
>
>   - 1 standby replica:
>     - can't be used for reads / write 👈 not for performance scaling, only for availability
>     - kept in sync _Synchronously_ with the primary instance
>
> - Multi AZ **Cluster**:
>
>   - 1 Writer DB instance
>   - 2 Reader DB instances:
>     - can be used for read 👈 limited read scaling
>     - kept in sync _Synchronously_ with the Writer instance

## RDS Automatic Backup, RDS Snapshots and Restore (8:52)

![Alt text](<images/Screenshot 2023-10-07 at 17.06.01 - [ASSOCIATESHARED]_RDS_Automatic_Backup,_RDS_Snapsh.png>)
RDS Backups - General

> What kind of backups does RDS support?
>
> RDS support 2 kind of backup:
>
> - Manually Snapshots
> - Automated Backups

> What is RDS Manually Snapshot?
>
> A backup performed manually and live past the termination of an RDS instance

> What is RDS Automated Backups?
>
> Backups performed automatically by RDS:
>
> - 0 to 35 days retention.
> - RDS also use S3 to store transaction logs every 5 minutes.
>
> 👉 With RDS Automated Backups, RPO can be only 5 minutes. 💪

![Alt text](<images/Screenshot 2023-10-07 at 17.06.28 - [ASSOCIATESHARED]_RDS_Automatic_Backup,_RDS_Snapsh.png>)
RDS Backups - Cross-Region

![Alt text](<images/Screenshot 2023-10-07 at 17.07.39 - [ASSOCIATESHARED]_RDS_Automatic_Backup,_RDS_Snapsh.png>)
RDS Restores

> Where is a RDS snapshot restored to?
>
> RDS Snapshot is restored to a new RDS instance, with new address.

> How long is an RDS Restore?
>
> RDS Restores aren't fast. Be careful with RTO.

## RDS Read-Replicas (6:36)

![Alt text](<images/Screenshot 2023-10-07 at 18.14.58 - [ASSOCIATESHARED]_RDS_Read-Replicas__le_—_Firefox_.png>)
RDS Read-Replicas are kept in sync _asynchronously_ with the primary instance

![Alt text](<images/Screenshot 2023-10-07 at 18.16.24 - [ASSOCIATESHARED]_RDS_Read-Replicas__le_—_Firefox_.png>)
RDS Read-Replicas - Performance Improvement

![Alt text](<images/Screenshot 2023-10-07 at 18.18.41 - [ASSOCIATESHARED]_RDS_Read-Replicas__le_—_Firefox_.png>)
RDS Read-Replicas - RPO/RTO Improvement

> What is the impact of RDS Read-Replicas to RPO/RTO?
>
> Read-Replicas offer:
>
> - near 0 RPO.
> - very low RTO 👈 RRs can be promoted quickly.

> Can Read Replicas solve data corruption?
>
> No. Data corruption will be replicated to RRs.

## [_DEMO_] MultiAZ & Snapshot Restore with RDS - PART1 (14:05)

## [_DEMO_] MultiAZ & Snapshot Restore with RDS - PART2 (12:07)

## RDS Data Security (7:03)

![Alt text](<images/Screenshot 2023-10-07 at 18.45.54 - [ASSOCIATESHARED]_RDS_Data_Security__le_—_Firefox_.png>)
RDS Data Security

![Alt text](<images/Screenshot 2023-10-07 at 18.46.30 - [ASSOCIATESHARED]_RDS_Data_Security__le_—_Firefox_.png>)
RDS Data Security - Extra Security

![Alt text](../1300-RELATIONAL_DATABASE_SERVICE%2528RDS%2529/00_LEARNINGAIDS/RDSSecurity-1.png)
RDS KMS Encryption & TDE

![Alt text](../1300-RELATIONAL_DATABASE_SERVICE%2528RDS%2529/00_LEARNINGAIDS/RDSSecurity-2.png)
IAM Authentication RDS

## RDS Custom (5:22)

![Alt text](<images/Screenshot 2023-10-07 at 18.54.45 - RDS_Custom__le_—_Firefox_Developer_Edition.png>)
RDS Custom - Fill the gap between DB-on-EC2 and RDS.

![Alt text](<images/Screenshot 2023-10-07 at 18.56.13 - RDS_Custom__le_—_Firefox_Developer_Edition.png>)
RDS Custom - Shared Responsibility

## Aurora Architecture (13:44)

![Alt text](<images/Screenshot 2023-10-07 at 18.59.57 - [ASSOCIATESHARED]_Aurora_Architecture__le_—_Firefo.png>)
Aurora - Key Differences

![Alt text](../1300-RELATIONAL_DATABASE_SERVICE%2528RDS%2529/00_LEARNINGAIDS/AuroraArch-1.png)
Aurora - Storage Architecture - 6 replicas

![Alt text](<images/Screenshot 2023-10-07 at 19.03.18 - [ASSOCIATESHARED]_Aurora_Architecture__le_—_Firefo.png>)
Aurora - Storage Architecture - Summary

![Alt text](../1300-RELATIONAL_DATABASE_SERVICE%2528RDS%2529/00_LEARNINGAIDS/AuroraArch-2.png)
Aurora - Endpoints

![Alt text](<images/Screenshot 2023-10-07 at 19.05.14 - [ASSOCIATESHARED]_Aurora_Architecture__le_—_Firefo.png>)
Aurora - Cost

![Alt text](<images/Screenshot 2023-10-07 at 19.07.24 - [ASSOCIATESHARED]_Aurora_Architecture__le_—_Firefo.png>)
Aurora - Restore, Clone & Backtrack

👉 Aurora implements a number of radical design changes which offer significant performance and feature improvements over other RDS database engines.

## Aurora Serverless (9:52)

![Alt text](<images/Screenshot 2023-10-08 at 14.49.46 - [ASSOCIATESHARED]_Aurora_Serverless__le_—_Firefox_.png>)
Aurora Serverless - Concepts

![Alt text](../1300-RELATIONAL_DATABASE_SERVICE%2528RDS%2529/00_LEARNINGAIDS/AuroraServerless-1.png)
Aurora Serverless - Architecture

![Alt text](<images/Screenshot 2023-10-08 at 15.00.15 - [ASSOCIATESHARED]_Aurora_Serverless__le_—_Firefox_.png>)
Aurora Serverless - Use Cases

## [_DEMO_] Migrating to Aurora Serverless [DONT DO THIS _DEMO_, IT WON'T WORK, UPDATING to SERVERLESSv2] (14:47)

## Aurora Global Database (5:08)

![Alt text](../1300-RELATIONAL_DATABASE_SERVICE%2528RDS%2529/00_LEARNINGAIDS/AuroraGlobalDB.png)
Aurora Global Database - Architecture

> How long is Aurora Global Database's replication between regions?
>
> Less than or equal 1s

![Alt text](<images/Screenshot 2023-10-08 at 15.29.14 - [ASSOCIATESHARED]_Aurora_Global_Database__learn.ca.png>)
Aurora Global Database - 5 secondary regions - each regions can have 16 read-only replicas

## Aurora Multi-master writes (7:51)

![Alt text](<images/Screenshot 2023-10-08 at 15.44.13 - [ASSOCIATESHARED]_Multi-master_writes__learn.cantr.png>)
Aurora Multi-Master - All instances are R/W

![Alt text](../1300-RELATIONAL_DATABASE_SERVICE%2528RDS%2529/00_LEARNINGAIDS/AuroraMultiMaster-1.png)
Aurora Multi-Master - Architecture

![Alt text](../1300-RELATIONAL_DATABASE_SERVICE%2528RDS%2529/00_LEARNINGAIDS/AuroraMultiMaster-2.png)
Aurora Single-Master - Failover

![Alt text](../1300-RELATIONAL_DATABASE_SERVICE%2528RDS%2529/00_LEARNINGAIDS/AuroraMultiMaster-3.png)
Aurora Multi-Master - Failover

## Relational Database Service (RDS) - RDS Proxy (9:47)

![Alt text](<images/Screenshot 2023-10-08 at 15.57.41 - [ASSOCIATESHARED]_Relational_Database_Service_(RDS.png>)
RDS Proxy - Why?

> Why use RDS Proxy?
>
> - Opening/Closing DB Connections consume resources.
>
>   - Increase latency.
>   - Especially with serverless architecture.
>
> - Handling failure of DB instance is hard:
>
>   - Doing it within application add risks
>
> 👉 RDS Proxy solves these problems.

> How RDS Proxy works?
>
> ![Alt text](<product-page-diagram_RDS Proxy_How-it-works@2x.a18916586f49718a16fd11579d168ab08c83d333.png>)
>
> [Amazon RDS Proxy](https://aws.amazon.com/rds/proxy/):
>
> - _sits between_ your application and your relational database
> - to efficiently _manage connections_ to the database
>
> 👉 improve scalability of the application.

![Alt text](<images/Screenshot 2023-10-08 at 16.00.03 - [ASSOCIATESHARED]_Relational_Database_Service_(RDS.png>)
RDS Proxy - Architecture

![Alt text](<images/Screenshot 2023-10-08 at 16.01.07 - [ASSOCIATESHARED]_Relational_Database_Service_(RDS.png>)
RDS Proxy - When?

![Alt text](<images/Screenshot 2023-10-08 at 16.03.35 - [ASSOCIATESHARED]_Relational_Database_Service_(RDS.png>)
RDS Proxy - Key Facts

## [Database Migration Service (DMS)](https://aws.amazon.com/dms/) (11:03)

![Alt text](<images/Screenshot 2023-10-08 at 16.13.02 - [ASSOCIATESHARED]_Database_Migration_Service_(DMS).png>)
Database Migration Service (DMS) - Summary

> Can DMS be used for on-premises DB?
>
> Yes and No.
>
> - DMS can be used to migrate from/to on-premises DB if the other endpoint were on AWS.
>
> - If both endpoints are on-premise, DMS can NOT be used.

![Alt text](../1300-RELATIONAL_DATABASE_SERVICE%2528RDS%2529/00_LEARNINGAIDS/Database%2520Migration%2520Service.png)
DMS - Architecture

> Where is DMS run?
>
> On a `replication instance` (an EC2 instance).

> Which part of DMS really run the migration?
>
> DMS Task:
>
> - Full load
> - Full load + CDC
> - CDC only

![Alt text](<images/Screenshot 2023-10-08 at 16.17.35 - [ASSOCIATESHARED]_Database_Migration_Service_(DMS).png>)
Schema Conversion Tool (SCT)

> AWS <u>Schema Conversion</u> Tool (SCT) vs AWS DMS <u>Schema Conversion</u>?
>
> - [AWS <u>Schema Conversion</u> Tool (SCT)](https://docs.aws.amazon.com/SchemaConversionTool/latest/userguide/CHAP_Welcome.html):
>
>   - convert your existing database schema from one database engine to another.
>   - used to convert data warehouse schemas, big data frameworks, application SQL code, and ETL processes.
>
> - AWS DMS [<u>Schema Conversion</u>](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_SchemaConversion.html):
>
>   - a web-version of the AWS SCT. [[1](https://docs.aws.amazon.com/dms/latest/userguide/CHAP_SchemaConversion.html#schema-conversion-limitations)]
>   - supports less database platforms and provides more limited functionality compared

![Alt text](<images/Screenshot 2023-10-08 at 16.19.03 - [ASSOCIATESHARED]_Database_Migration_Service_(DMS).png>)
DMS & Snowball ☃️

## RDS Section Quiz
