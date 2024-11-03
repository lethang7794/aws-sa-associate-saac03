# SIMPLE STORAGE SERVICE (S3)

## S3 Security (Resource Policies & ACLs) (18:19)

![Alt text](<images/Screenshot 2023-10-03 at 10.38.24 - [ASSOCIATESHARED]_S3_Security_(Resource_Policies_&.png>)
S3 is private by default

![Alt text](<images/Screenshot 2023-10-03 at 10.40.51 - [ASSOCIATESHARED]_S3_Security_(Resource_Policies_&.png>)
S3 Bucket Policies

![Alt text](./material/0700-SIMPLE_STORAGE_SERVICE(S3)/00_LEARNINGAIDS/S3Security-1.png)
S3 Bucket Polices support _different accounts_ & _anonymous_ principles

![Alt text](<images/Screenshot 2023-10-03 at 10.44.48 - [ASSOCIATESHARED]_S3_Security_(Resource_Policies_&.png>)
S3 Bucket Polices - Condition

![Alt text](<images/Screenshot 2023-10-03 at 10.44.55 - [ASSOCIATESHARED]_S3_Security_(Resource_Policies_&.png>)
S3 Bucket Polices - Deny - Allow - Deny

![Alt text](<images/Screenshot 2023-10-03 at 10.46.00 - [ASSOCIATESHARED]_S3_Security_(Resource_Policies_&.png>)
[Legacy] Access Control Lists (ACLS)

![Alt text](./material/0700-SIMPLE_STORAGE_SERVICE(S3)/00_LEARNINGAIDS/S3Security-2.png)
Block Public Access

![Alt text](<images/Screenshot 2023-10-03 at 10.48.29 - [ASSOCIATESHARED]_S3_Security_(Resource_Policies_&.png>)
Identity Policies - Bucket Polices - ACLs

## S3 Static Hosting (10:36)

![Alt text](<images/Screenshot 2023-10-03 at 10.58.27 - [ASSOCIATESHARED]_S3_Static_Hosting__learn.cantril.png>)

> [!NOTE] What is the normal access to S3 object?
>
> Via AWS APIs.

> [!NOTE] What is S3 website endpoint?
>
> The endpoint to access the S3 bucket via HTTP.

![Alt text](./material/0700-SIMPLE_STORAGE_SERVICE(S3)/00_LEARNINGAIDS/S3StaticHosting-1.png)
Out-of-band pages

## [_DEMO_] Creating a static website with S3 (17:55)

## Object Versioning & MFA Delete (7:41)

![Alt text](<images/Screenshot 2023-10-03 at 11.27.34 - [ASSOCIATESHARED]_Object_Versioning_&_MFA_Delete__.png>)
Object Versioning cannot be switched off

![Alt text](<images/Screenshot from 2023-11-06 20-19-04.png>)
Object Versioning: store multiple versions of objects

![Alt text](<images/Screenshot from 2023-11-06 20-19-32.png>)
Object Versioning: DeleteMaker & Version delete

![Alt text](<images/Screenshot 2023-10-03 at 11.30.26 - [ASSOCIATESHARED]_Object_Versioning_&_MFA_Delete__.png>)
Object Versioning: All versions will be billed

![Alt text](<images/Screenshot 2023-10-03 at 11.31.07 - [ASSOCIATESHARED]_Object_Versioning_&_MFA_Delete__.png>)
Object Versioning: MFA for suspending bucket versioning and deleting object versions

## [_DEMO_] - S3 Versioning (15:45)

## S3 Performance Optimization (11:42)

![Alt text](./material/0700-SIMPLE_STORAGE_SERVICE(S3)/00_LEARNINGAIDS/S3Performance-1.png)
Global Architecture

![Alt text](./material/0700-SIMPLE_STORAGE_SERVICE(S3)/00_LEARNINGAIDS/S3Performance-2.png)
Single PUT Upload

![Alt text](./material/0700-SIMPLE_STORAGE_SERVICE(S3)/00_LEARNINGAIDS/S3Performance-3.png)
Multipart Upload

![Alt text](./material/0700-SIMPLE_STORAGE_SERVICE(S3)/00_LEARNINGAIDS/S3Performance-4.png)
S3 Transfer Acceleration

> [!NOTE] What is S3 Transfer Acceleration?

## [_DEMO_] - S3 Performance (5:06)

## Key Management Service (KMS) (18:38)

![Alt text](<images/Screenshot 2023-10-03 at 12.34.04 - [ASSOCIATESHARED]_Key_Management_Service_(KMS)__le.png>)
Key Management Service (KMS)

![Alt text](<images/Screenshot 2023-10-03 at 12.35.44 - [ASSOCIATESHARED]_Key_Management_Service_(KMS)__le.png>)
KMS Keys

![Alt text](<images/Screenshot 2023-10-03 at 12.36.58 - [ASSOCIATESHARED]_Key_Management_Service_(KMS)__le.png>)
CreateKey & Encrypt using KMS

![Alt text](<images/Screenshot 2023-10-03 at 12.37.59 - [ASSOCIATESHARED]_Key_Management_Service_(KMS)__le.png>)
Decrypt using KMS

![Alt text](<images/Screenshot 2023-10-03 at 12.40.39 - [ASSOCIATESHARED]_Key_Management_Service_(KMS)__le.png>)
Data Encryption Keys (DEKs)

![Alt text](<images/Screenshot 2023-10-03 at 12.43.51 - [ASSOCIATESHARED]_Key_Management_Service_(KMS)__le.png>)
KMS Keys - Key Concepts

![Alt text](./material/0700-SIMPLE_STORAGE_SERVICE(S3)/00_LEARNINGAIDS/KMS-3.png)
Key Policies and Security

## [_DEMO_] KMS - Encrypting the battleplans with KMS (12:43)

## S3 Object Encryption CSE/SSE (23:31)

![Alt text](<images/Screenshot 2023-10-03 at 13.31.21 - [SHAREDALL]_S3_Object_Encryption_CSESSE__learn.c_-.png>)
S3 Bucket aren't encrypted

![Alt text](./material/0700-SIMPLE_STORAGE_SERVICE(S3)/00_LEARNINGAIDS/S3Encryption-1.png)
CSE vs SSE

![Alt text](<images/Screenshot 2023-10-03 at 13.44.27 - [SHAREDALL]_S3_Object_Encryption_CSESSE__learn.can.png>)
SSE-C / SSE-S3 / SS3-KMS

![Alt text](<images/Screenshot 2023-10-03 at 13.46.10 - [SHAREDALL]_S3_Object_Encryption_CSESSE__learn.can.png>)
SSE-C

![Alt text](<images/Screenshot 2023-10-03 at 13.48.16 - [SHAREDALL]_S3_Object_Encryption_CSESSE__learn.can.png>)
SSE-S3 👈 Default

> [!NOTE] What is the biggest drawback of SS3-S3?
>
> The admin can see the content.

![Alt text](<images/Screenshot 2023-10-03 at 14.03.11 - [SHAREDALL]_S3_Object_Encryption_CSESSE__learn.can.png>)
SSE-KMS

![Alt text](<images/Screenshot 2023-10-03 at 14.04.52 - [SHAREDALL]_S3_Object_Encryption_CSESSE__learn.can.png>)
S3 Object Encryption - Summary

## [_DEMO_] Object Encryption and Role Separation (14:50)

## S3 Bucket Keys (5:59)

![Alt text](<images/Screenshot 2023-10-03 at 14.54.32 - S3_Bucket_Keys__learn.cantr_-_Personal_-_Microsoft.png>)
S3 without Bucket Keys

![Alt text](<images/Screenshot 2023-10-03 at 14.55.25 - S3_Bucket_Keys__learn.cantr_-_Personal_-_Microsoft.png>)
S3 with Bucket Keys

![Alt text](<images/Screenshot 2023-10-03 at 14.56.51 - S3_Bucket_Keys__learn.cantr_-_Personal_-_Microsoft.png>)
S3 Bucket Keys - Notes

## S3 Object Storage Classes - PART1 (9:23)

![Alt text](./material/0700-SIMPLE_STORAGE_SERVICE(S3)/00_LEARNINGAIDS/S3StorageClasses-1.png)
S3 Storage Classes - S3 Standard

![Alt text](./material/0700-SIMPLE_STORAGE_SERVICE(S3)/00_LEARNINGAIDS/S3StorageClasses-2.png)
S3 Storage Classes - S3 Standard - IA

![Alt text](./material/0700-SIMPLE_STORAGE_SERVICE(S3)/00_LEARNINGAIDS/S3StorageClasses-3.png)
S3 Storage Classes - S3 One Zone - IA

## S3 Object Storage Classes - PART2 (11:41)

![Alt text](./material/0700-SIMPLE_STORAGE_SERVICE(S3)/00_LEARNINGAIDS/S3StorageClasses-4.png)
S3 Storage Classes - S3 Glacier - Instant

![Alt text](./material/0700-SIMPLE_STORAGE_SERVICE(S3)/00_LEARNINGAIDS/S3StorageClasses-5.png)
S3 Storage Classes - S3 Glacier - Flexible

![Alt text](./material/0700-SIMPLE_STORAGE_SERVICE(S3)/00_LEARNINGAIDS/S3StorageClasses-6.png)
S3 Storage Classes - S3 Glacier - Deep Archive

![Alt text](./material/0700-SIMPLE_STORAGE_SERVICE(S3)/00_LEARNINGAIDS/S3IntelligentTiering.png)
S3 Storage Classes - S3 Intelligent-Tiering

## S3 Lifecycle Configuration (8:13)

![Alt text](<images/Screenshot 2023-10-03 at 15.27.18 - [ASSOCIATESHARED]_S3_Lifecycle_Configuration__lear.png>)
S3 Lifecycle Configuration

![Alt text](./material/0700-SIMPLE_STORAGE_SERVICE(S3)/00_LEARNINGAIDS/S3LifeCycle.png)
S3 Lifecycle Configuration - Transition

## S3 Replication (13:59)

![Alt text](<images/Screenshot 2023-10-03 at 15.32.18 - [SHAREDALL]_S3_Replication__learn.cantrill.i_-_Per.png>)
Cross-Region Replication (CRR) & Same-Region Replication (SRR)

![Alt text](<images/Screenshot 2023-10-03 at 15.34.53 - [SHAREDALL]_S3_Replication__learn.cantrill.i_-_Per.png>)
Replication can be between different accounts

![Alt text](<images/Screenshot 2023-10-03 at 15.37.16 - [SHAREDALL]_S3_Replication__learn.cantrill.i_-_Per.png>)
S3 Replication Options - RTC

![Alt text](<images/Screenshot 2023-10-03 at 15.40.06 - [SHAREDALL]_S3_Replication__learn.cantrill.i_-_Per.png>)
S3 Replication - Considerations

![Alt text](<images/Screenshot 2023-10-03 at 15.41.46 - [SHAREDALL]_S3_Replication__learn.cantrill.i_-_Per.png>)
Why use S3 replication?

## [_DEMO_] Cross-Region Replication of an S3 Static Website (19:52)

## S3 PreSigned URLs (11:11)

![Alt text](./material/0700-SIMPLE_STORAGE_SERVICE(S3)/00_LEARNINGAIDS/S3PresignedURL-1.png)
Why use Presigned URL?

![Alt text](./material/0700-SIMPLE_STORAGE_SERVICE(S3)/00_LEARNINGAIDS/S3PresignedURL-2.png)
Presigned URL works with both Upload and Download

![Alt text](./material/0700-SIMPLE_STORAGE_SERVICE(S3)/00_LEARNINGAIDS/S3PresignedURL-3.png)
Apps can use Presigned URL to provide access to Media Bucket

![Alt text](<images/Screenshot 2023-10-03 at 16.07.12 - [ASSOCIATESHARED]_S3_PreSigned_URLs__learn.cantril.png>)
Presigned URL - Gotchas

## [_DEMO_] Creating and using PresignedURLs (18:23)

## S3 Select and Glacier Select (5:32)

![Alt text](<images/Screenshot 2023-10-03 at 18.46.38 - [ASSOCIATESHARED]_S3_Select_and_Glacier_Select__le.png>)

![Alt text](./material/0700-SIMPLE_STORAGE_SERVICE(S3)/00_LEARNINGAIDS/S3andGlacierSelect.png)

## S3 Events (4:32)

![Alt text](<images/Screenshot 2023-10-03 at 18.51.54 - [ASSOCIATESHARED]_S3_Events__learn.cantrill.i_-_Pe.png>)

![Alt text](./material/0700-SIMPLE_STORAGE_SERVICE(S3)/00_LEARNINGAIDS/S3EventNotifications.png)

## S3 Access Logs (3:05)

![Alt text](./material/0700-SIMPLE_STORAGE_SERVICE(S3)/00_LEARNINGAIDS/S3AccessLogs.png)
S3 Access Logs

## S3 Object Lock (9:52)

![Alt text](<images/Screenshot 2023-10-03 at 19.00.35 - [ASSOCIATESHARED]_S3_Object_Lock__learn.cantrill.i.png>)
S3 Object Lock - Write-Once-Read-Many (WORM)

![Alt text](<images/Screenshot 2023-10-03 at 19.02.45 - [ASSOCIATESHARED]_S3_Object_Lock__learn.cantrill.i.png>)
S3 Object Lock - Retention (Compliance / Governance)

![Alt text](<images/Screenshot 2023-10-03 at 19.04.06 - [ASSOCIATESHARED]_S3_Object_Lock__learn.cantrill.i.png>)
S3 Object Lock - Legal Hold

![Alt text](<images/Screenshot 2023-10-03 at 19.05.55 - [ASSOCIATESHARED]_S3_Object_Lock__learn.cantrill.i.png>)
S3 Object Lock - Summary

## S3 Access Points (5:52)

![Alt text](<images/Screenshot 2023-10-03 at 19.13.17 - S3_Access_Points__learn.cantrill.i_-_Personal_-_Mi.png>)
Each S3 Access Points is a "mini S3 bucket"

![Alt text](<images/Screenshot 2023-10-03 at 19.15.15 - S3_Access_Points__learn.cantrill.i_-_Personal_-_Mi.png>)
S3 Access Points' DNS, policies & endpoint polices

## [_DEMO_] Multi-Region Access Points (MRAP) (20:25)

## S3 Section Quiz
