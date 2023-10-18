# ELASTIC COMPUTE CLOUD (EC2) BASICS

## Virtualization 101 (12:27)

![Alt text](<../0900-ELASTIC_COMPUTE_CLOUD(EC2)/00_LEARNINGAIDS/Virtualization101-1.png>)
Privileged Mode / User Mode - Kernel - System Call

![Alt text](<../0900-ELASTIC_COMPUTE_CLOUD(EC2)/00_LEARNINGAIDS/Virtualization101-2.png>)
How to run multiple OSes with a single piece of hardware?

![Alt text](<../0900-ELASTIC_COMPUTE_CLOUD(EC2)/00_LEARNINGAIDS/Virtualization101-3.png>)
Emulated Virtualization

![Alt text](<../0900-ELASTIC_COMPUTE_CLOUD(EC2)/00_LEARNINGAIDS/Virtualization101-4.png>)
Paravirtualization

![Alt text](<../0900-ELASTIC_COMPUTE_CLOUD(EC2)/00_LEARNINGAIDS/Virtualization101-5.png>)
Hardware Assisted Virtualization

![Alt text](<../0900-ELASTIC_COMPUTE_CLOUD(EC2)/00_LEARNINGAIDS/Virtualization101-6.png>)
SR-IOV

## EC2 Architecture and Resilience (12:36)

![Alt text](<../0900-ELASTIC_COMPUTE_CLOUD(EC2)/00_LEARNINGAIDS/EC2Architecture-1.png>)
EC2 Architecture

> What is the level of resilience of EC2 service?
>
> EC2 has AZ-level resilience

![Alt text](<images/Screenshot 2023-10-04 at 20.30.37 - [ASSOCIATESHARED]_EC2_Architecture_and_Resilience_.png>)
What's EC2 Good for?

## EC2 Instance Types - PART1 (11:52)

![Alt text](<images/Screenshot 2023-10-04 at 20.39.38 - [ASSOCIATESHARED]_EC2_Instance_Types_-_PART1__lear.png>)

![Alt text](<images/Screenshot 2023-10-04 at 20.41.33 - [ASSOCIATESHARED]_EC2_Instance_Types_-_PART1__lear.png>)

![Alt text](<../0900-ELASTIC_COMPUTE_CLOUD(EC2)/00_LEARNINGAIDS/EC2InstanceTypes.png>)

## EC2 Instance Types - PART2 (8:13)

![Alt text](<images/Screenshot 2023-10-04 at 20.53.43 - [ASSOCIATESHARED]_EC2_Instance_Types_-_PART2__lear.png>)

## [_DEMO_] EC2 SSH vs EC2 Instance Connect (17:06)

## Storage Refresher (14:16)

![Alt text](<images/Screenshot 2023-10-05 at 10.17.55 - [ASSOCIATESHARED]_Storage_Refresher__learn.cantril.png>)
Direct / Network Storage, Ephemeral / Persistent Storage

![Alt text](<../0900-ELASTIC_COMPUTE_CLOUD(EC2)/00_LEARNINGAIDS/StorageRefresher-1.png>)
Block / File / Object Storage

![Alt text](<../0900-ELASTIC_COMPUTE_CLOUD(EC2)/00_LEARNINGAIDS/StorageRefresher-2.png>)
IO Block Size - IOPS - Throughput

## Elastic Block Store (EBS) Service Architecture (8:43)

![Alt text](<images/Screenshot 2023-10-05 at 10.36.39 - [ASSOCIATESHARED]_Elastic_Block_Store_(EBS)_Servic.png>)
EBS Architecture

![Alt text](<images/Screenshot 2023-10-05 at 10.38.55 - [ASSOCIATESHARED]_Elastic_Block_Store_(EBS)_Servic.png>)
EBS Snapshot

## EBS Volume Types - General Purpose (9:23)

![Alt text](<../0900-ELASTIC_COMPUTE_CLOUD(EC2)/00_LEARNINGAIDS/EBSVolumes-1.png>)
EBS - GP2

![Alt text](<../0900-ELASTIC_COMPUTE_CLOUD(EC2)/00_LEARNINGAIDS/EBSVolumes-2.png>)
EBS - GP3

## EBS Volume Types - Provisioned IOPS (6:15)

![Alt text](<../0900-ELASTIC_COMPUTE_CLOUD(EC2)/00_LEARNINGAIDS/EBSVolumes-3.png>)

## EBS Volume Types - HDD-Based (4:32)

![Alt text](<../0900-ELASTIC_COMPUTE_CLOUD(EC2)/00_LEARNINGAIDS/EBSVolumes-4.png>)

## Instance Store Volumes - Architecture (9:00)

![Alt text](<images/Screenshot 2023-10-05 at 11.14.41 - [ASSOCIATESHARED]_Instance_Store_Volumes_-_Archite.png>)
Instance Store is _local_ storage on the EC2 host

> What kind of storage has the highest performance for EC2?
>
> Instance Store

> What is the price model of EC2 Instance Store?
>
> Instance Store is include in instance price.

> What is the lifecycle of Instance Store?
>
> It's can only be attached at instance launch.

![Alt text](<../0900-ELASTIC_COMPUTE_CLOUD(EC2)/00_LEARNINGAIDS/InstanceStoreVolumes.png>)
Instance Store is ephemeral storage, attached with an EC2 host

![Alt text](<images/Screenshot 2023-10-05 at 11.18.54 - [ASSOCIATESHARED]_Instance_Store_Volumes_-_Archite.png>)
Instance Store - Throughput

![Alt text](<images/Screenshot 2023-10-05 at 11.20.13 - [ASSOCIATESHARED]_Instance_Store_Volumes_-_Archite.png>)
Instance Store - Recap

## Choosing between the EC2 Instance Store and EBS (8:49)

![Alt text](<../0900-ELASTIC_COMPUTE_CLOUD(EC2)/00_LEARNINGAIDS/InstanceStorevsEBS-1.png>)

![Alt text](<../0900-ELASTIC_COMPUTE_CLOUD(EC2)/00_LEARNINGAIDS/InstanceStorevsEBS-2.png>)

## Snapshots, Restore & Fast Snapshot Restore (FSR) (10:55)

![Alt text](<images/Screenshot 2023-10-05 at 12.17.27 - [ASSOCIATESHARED]_Snapshots,_Restore_&_Fast_Snapsh.png>)
EBS Snapshots

![Alt text](<../0900-ELASTIC_COMPUTE_CLOUD(EC2)/00_LEARNINGAIDS/EBSSnapshots-1.png>)
EBS Snapshots - Architecture

![Alt text](<images/Screenshot 2023-10-05 at 12.20.49 - [ASSOCIATESHARED]_Snapshots,_Restore_&_Fast_Snapsh.png>)
EBS Snapshots - Performance - Fast Snapshot Restore (FSR)

![Alt text](<../0900-ELASTIC_COMPUTE_CLOUD(EC2)/00_LEARNINGAIDS/EBSSnapshots-2.png>)
EBS Snapshot - Consumption & Billing

## [_DEMO_] EBS Volumes - PART1 (15:16)

## [_DEMO_] EBS Volumes - PART2 (14:13)

## [_DEMO_] EBS Volumes - PART3 (14:27)

## EBS Encryption (8:22)

![Alt text](<../0900-ELASTIC_COMPUTE_CLOUD(EC2)/00_LEARNINGAIDS/EBSEncryption-1.png>)
Flow of EBS Encryption

![Alt text](<../0900-ELASTIC_COMPUTE_CLOUD(EC2)/00_LEARNINGAIDS/EBSEncryption-2.png>)
Encryption of EBS Snapshot

![Alt text](<images/Screenshot 2023-10-05 at 13.54.22 - [ASSOCIATESHARED]_EBS_Encryption__learn.cantrill.i.png>)
EBS Encryption - Summary

## Network Interfaces, Instance IPs and DNS (15:58)

![Alt text](<../0900-ELASTIC_COMPUTE_CLOUD(EC2)/00_LEARNINGAIDS/EC2networking-1.png>)
[Elastic Network Interface (ENI)](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html) & EC2 Network

![Alt text](<../0900-ELASTIC_COMPUTE_CLOUD(EC2)/00_LEARNINGAIDS/EC2networking-2.png>)
EC2 Network & DNS Architecture

![Alt text](<images/Screenshot 2023-10-05 at 14.32.51 - [ASSOCIATESHARED]_Network_Interfaces,_Instance_IPs.png>)
EC2 Network & DNS Architecture - Summary

## [_DEMO_] Manual Install of Wordpress on EC2 - PART1 (12:27)

## [_DEMO_] Manual Install of Wordpress on EC2 - PART2 (12:36)

## Amazon Machine Images (AMI) (13:58)

![Alt text](<images/Screenshot 2023-10-05 at 15.41.20 - [ASSOCIATESHARED]_Amazon_Machine_Images_(AMI)__lea.png>)
AMI

![Alt text](<../0900-ELASTIC_COMPUTE_CLOUD(EC2)/00_LEARNINGAIDS/AMILifecycle.png>)
AMI Lifecycle

![Alt text](<images/Screenshot 2023-10-05 at 15.48.07 - [ASSOCIATESHARED]_Amazon_Machine_Images_(AMI)__lea.png>)
AMI - Tips

## [_DEMO_] Creating an Animals4life AMI - PART1 (9:38)

## [_DEMO_] Creating an Animals4life AMI - PART2 (10:57)

## [_DEMO_] Copying & Sharing an AMI (8:35)

## EC2 Purchase Options - PART1 (9:22)

![Alt text](<../0900-ELASTIC_COMPUTE_CLOUD(EC2)/00_LEARNINGAIDS/EC2PurchaseOptions-1.png>)
EC2 Purchase Options - On-Demand

![Alt text](<../0900-ELASTIC_COMPUTE_CLOUD(EC2)/00_LEARNINGAIDS/EC2PurchaseOptions-2.png>)
EC2 Purchase Options - Spot

## EC2 Purchase Options - PART2 (11:56)

![Alt text](<../0900-ELASTIC_COMPUTE_CLOUD(EC2)/00_LEARNINGAIDS/EC2PurchaseOptions-3.png>)
EC2 Purchase Options - Reserved

![Alt text](<../0900-ELASTIC_COMPUTE_CLOUD(EC2)/00_LEARNINGAIDS/EC2PurchaseOptions-4.png>)
EC2 Purchase Options - Dedicated Hosts

![Alt text](<../0900-ELASTIC_COMPUTE_CLOUD(EC2)/00_LEARNINGAIDS/EC2PurchaseOptions-5.png>)
EC2 Purchase Options - Dedicated Instances

## Reserved Instances - the rest (11:58)

![Alt text](<images/Screenshot 2023-10-05 at 16.44.10 - Reserved_Instances_-_the_rest__learn.cantrill.io_—.png>)
Scheduled Reserved Instances

![Alt text](<images/Screenshot 2023-10-05 at 16.47.53 - Reserved_Instances_-_the_rest__learn.cantrill.io_—.png>)
Capacity Reservations

![Alt text](<images/Screenshot 2023-10-05 at 16.49.30 - Reserved_Instances_-_the_rest__learn.cantrill.io_—.png>)
EC2 Saving Plan

## Instance Status Checks & Auto Recovery (7:42)

![Alt text](<../0900-ELASTIC_COMPUTE_CLOUD(EC2)/00_LEARNINGAIDS/InstanceStatusChecks.png>)
Instance Status Checks & Auto Recovery

## [_DEMO_] Shutdown, Terminate & Termination Protection (5:40)

## Horizontal & Vertical Scaling (11:23)

![Alt text](<../0900-ELASTIC_COMPUTE_CLOUD(EC2)/00_LEARNINGAIDS/EC2Scaling-1.png>)
![Alt text](<../0900-ELASTIC_COMPUTE_CLOUD(EC2)/00_LEARNINGAIDS/EC2Scaling-2.png>)
![Alt text](<../0900-ELASTIC_COMPUTE_CLOUD(EC2)/00_LEARNINGAIDS/EC2Scaling-3.png>)

## Instance Metadata [THEORY & _DEMO_] (15:46)

![Alt text](<../0900-ELASTIC_COMPUTE_CLOUD(EC2)/00_LEARNINGAIDS/EC2InstanceMetadata.png>)

## EC2 Basics Section Quiz
