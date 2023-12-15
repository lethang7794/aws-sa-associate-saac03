# HYBRID ENVIRONMENTS AND MIGRATION

## Border Gateway Protocol 101 (17:29)

![Alt text](<images/Screenshot 2023-10-11 at 11.13.54 - Border_Gateway_Protocol_101__learn.cantrill.io_—_F.png>)
BGP - AS, ASN, ASPATH

![Alt text](../1900-HYBRID_ENVIRONMENTS_AND_MIGRATION/00_LEARNINGAIDS/BGP101-1.png)
BGP - Architecture

## IPSec VPN Fundamentals (14:54)

[Tech Fundamentals | IP Sec VPN Fundamentals]

![Alt text](../1900-HYBRID_ENVIRONMENTS_AND_MIGRATION/00_LEARNINGAIDS/IPSEC-101-1.png)
![Alt text](../1900-HYBRID_ENVIRONMENTS_AND_MIGRATION/00_LEARNINGAIDS/IPSEC-101-2.png)
![Alt text](../1900-HYBRID_ENVIRONMENTS_AND_MIGRATION/00_LEARNINGAIDS/IPSEC-101-3.png)
![Alt text](../1900-HYBRID_ENVIRONMENTS_AND_MIGRATION/00_LEARNINGAIDS/IPSEC-101-4.png)

## AWS Site-to-Site VPN (18:05)

![Alt text](<images/Screenshot 2023-10-11 at 11.45.21 - AWS_Site-to-Site_VPN__learn.cantrill.io_—_Firefox_.png>)
AWS Site-to-Site VPN - Overview

> What is a virtual private gateway (VGW)?
>
> A virtual private gateway (VGW) is part of a VPC that provides edge routing for AWS managed VPN connections and AWS Direct Connect connections. You associate an AWS Direct Connect gateway with the virtual private gateway for the VPC.
> ([Source](https://aws.amazon.com/directconnect/faqs/#what-is-a-virtual-private-gateway))

![Alt text](../1900-HYBRID_ENVIRONMENTS_AND_MIGRATION/00_LEARNINGAIDS/AWS-Site-2-SiteVPN-1.png)
AWS Site-to-Site VPN - Architecture

![Alt text](../1900-HYBRID_ENVIRONMENTS_AND_MIGRATION/00_LEARNINGAIDS/AWS-Site-2-SiteVPN-2.png)
AWS Site-to-Site VPN - Architecture (HA)

![Alt text](../1900-HYBRID_ENVIRONMENTS_AND_MIGRATION/00_LEARNINGAIDS/AWS-Site-2-SiteVPN-3.png)
AWS Site-to-Site VPN - Static vs Dynamic VPN (BGP)

![Alt text](<images/Screenshot 2023-10-11 at 11.57.16 - AWS_Site-to-Site_VPN__learn.cantrill.io_—_Firefox_.png>)
AWS Site-to-Site VPN - Considerations

## [_DEMO_] Simple Site2Site VPN - STAGE0 - SETUP (4:52)

## [_DEMO_] Simple Site2Site VPN - STAGE1 - AWS VPN (10:01)

## [_DEMO_] Simple Site2Site VPN - STAGE2 - onprep pfSense Config (17:09)

## [_DEMO_] Simple Site2Site VPN - STAGE3 - Routing & Security (10:29)

## [_DEMO_] Simple Site2Site VPN - STAGE4 - Testing (5:42)

## [_DEMO_] Simple Site2Site VPN - STAGE5 - Cleanup (1:50)

## AWS Direct Connect (DX) Concepts (9:37)

![Alt text](<images/Screenshot 2023-10-11 at 14.07.52 - Direct_Connect_(DX)_Concepts__learn.c_—_Firefox_De.png>)
DX - Concepts

![Alt text](../1900-HYBRID_ENVIRONMENTS_AND_MIGRATION/00_LEARNINGAIDS/DirectConnect-1.png)
DX - Architecture

## AWS Direct Connect (DX) Resilience (13:50)

![Alt text](../1900-HYBRID_ENVIRONMENTS_AND_MIGRATION/00_LEARNINGAIDS/DirectConnect-Resilience-1.png)
DX Resilience - NONE 😭

![Alt text](../1900-HYBRID_ENVIRONMENTS_AND_MIGRATION/00_LEARNINGAIDS/DirectConnect-Resilience-2.png)
DX Resilience - OK ⭐

![Alt text](../1900-HYBRID_ENVIRONMENTS_AND_MIGRATION/00_LEARNINGAIDS/DirectConnect-Resilience-3.png)
DX Resilience - BETTER ⭐⭐

![Alt text](../1900-HYBRID_ENVIRONMENTS_AND_MIGRATION/00_LEARNINGAIDS/DirectConnect-Resilience-4.png)
DX Resilience - GREAT ⭐⭐⭐

## Direct Connect (DX) - Public VIF + VPN (Encryption) (6:43)

![Alt text](<images/Screenshot 2023-10-11 at 14.29.32 - Direct_Connect_(DX)_-_Public_VIF_+_VPN_(Encryption.png>)
DX - Public VIF + VPN

![Alt text](<images/Screenshot 2023-10-11 at 14.31.10 - Direct_Connect_(DX)_-_Public_VIF_+_VPN_(Encryption.png>)
DX - Public VIF + VPN

> What is a virtual interface (VIF)?
>
> For AWS Direct Connection, a virtual interface (VIF) is necessary to access AWS services, and is either public or private.
>
> ([Source](https://aws.amazon.com/directconnect/faqs/#what-is-a-virtual-interface))

## Transit Gateway (TGW) (10:26)

![Alt text](<images/Screenshot 2023-10-11 at 14.49.09 - Transit_Gateway__learn.c_—_Firefox_Developer_Editi.png>)
TGW - Overview

![Alt text](../1900-HYBRID_ENVIRONMENTS_AND_MIGRATION/00_LEARNINGAIDS/TransitGateway-1.png)
TGW - The Problem

![Alt text](../1900-HYBRID_ENVIRONMENTS_AND_MIGRATION/00_LEARNINGAIDS/TransitGateway-2.png)
TGW - The Solution

![Alt text](<images/Screenshot 2023-10-11 at 14.55.15 - Transit_Gateway__learn.c_—_Firefox_Developer_Editi.png>)
TGW - Considerations

## Storage Gateway - Volume Gateway (14:15)

![Alt text](<images/Screenshot 2023-10-11 at 14.58.42 - Storage_Gateway_-_Volume__learn.c_—_Firefox_Develo.png>)
Storage Gateway - Overview

![Alt text](../1900-HYBRID_ENVIRONMENTS_AND_MIGRATION/00_LEARNINGAIDS/StorageGateway-VOLUME-1.png)
Storage Gateway - Volume Gateway - Stored Mode: Data stored primary on-premise 👈 Backup, DR

![Alt text](../1900-HYBRID_ENVIRONMENTS_AND_MIGRATION/00_LEARNINGAIDS/StorageGateway-VOLUME-2.png)
Storage Gateway - Volume Gateway - Cached Mode

![Alt text](../1900-HYBRID_ENVIRONMENTS_AND_MIGRATION/00_LEARNINGAIDS/StorageGateway-VOLUME-3.png)
Storage Gateway - Volume Gateway - Cached Mode: Data stored in AWS, cached on-premises 👈 Capacity Expand

## Storage Gateway - Tape Gateway - virtual tape library (VTL) (12:11)

![Alt text](<images/Screenshot 2023-10-11 at 15.14.26 - Storage_Gateway_-_Tape_(VTL)__learn.c_—_Firefox_De.png>)
Tape-based Backup - Overview

![Alt text](../1900-HYBRID_ENVIRONMENTS_AND_MIGRATION/00_LEARNINGAIDS/StorageGateway-TAPE-1.png)
Tape-based Backup - Architecture

![Alt text](../1900-HYBRID_ENVIRONMENTS_AND_MIGRATION/00_LEARNINGAIDS/StorageGateway-TAPE-2.png)
Storage Gateway - [Tape Gateway](https://aws.amazon.com/storagegateway/vtl/)

## Storage Gateway - File Gateway (12:15)

![Alt text](<images/Screenshot 2023-10-11 at 15.37.35 - Storage_Gateway_-_File__learn.c_—_Firefox_Develope.png>)
Storage Gateway - File Gateway - Overview

![Alt text](../1900-HYBRID_ENVIRONMENTS_AND_MIGRATION/00_LEARNINGAIDS/StorageGateway-FILE-1.png)
Storage Gateway - File Gateway - Architecture

![Alt text](../1900-HYBRID_ENVIRONMENTS_AND_MIGRATION/00_LEARNINGAIDS/StorageGateway-FILE-2.png)
Storage Gateway - File Gateway - Multiple Contributors

![Alt text](../1900-HYBRID_ENVIRONMENTS_AND_MIGRATION/00_LEARNINGAIDS/StorageGateway-FILE-3.png)
Storage Gateway - File Gateway - Multiple Contributors & Replication

![Alt text](../1900-HYBRID_ENVIRONMENTS_AND_MIGRATION/00_LEARNINGAIDS/StorageGateway-FILE-4.png)
Storage Gateway - File Gateway - S3 Storage Classes

## Snowball / Edge / Snowmobile [NEW VERSION COMING SOON] (10:47)

![Alt text](<images/Screenshot 2023-10-11 at 15.54.33 - Snowball__Edge__Snowmobile_[NEW_VERSION_COMING_SOO.png>)
Snowball / Edge / Snowmobile - Key Concepts

![Alt text](<images/Screenshot 2023-10-11 at 15.56.25 - Snowball__Edge__Snowmobile_[NEW_VERSION_COMING_SOO.png>)
Snowball = Storage

![Alt text](<images/Screenshot 2023-10-11 at 16.00.13 - Snowball__Edge__Snowmobile_[NEW_VERSION_COMING_SOO.png>)
Snowball Edge = Snowball + Compute

![Alt text](<images/Screenshot 2023-10-11 at 16.01.40 - Snowball__Edge__Snowmobile_[NEW_VERSION_COMING_SOO.png>)
Snowmobile = Data Center in a truck

## Directory Service (15:50)

![Alt text](<images/Screenshot 2023-10-11 at 16.13.10 - Directory_Service__learn.cantril_and_1_more_page_-.png>)
What's a Directory?

![Alt text](<images/Screenshot 2023-10-11 at 23.15.36 - Directory_Service__learn.cantrill.io_and_5_more_pa.png>)
What about Directory Service?

![Alt text](../1900-HYBRID_ENVIRONMENTS_AND_MIGRATION/00_LEARNINGAIDS/DirectoryService-1.png)
Directory Service - Simple AD Mode

![Alt text](../1900-HYBRID_ENVIRONMENTS_AND_MIGRATION/00_LEARNINGAIDS/DirectoryService-2.png)
Directory Service - AWS Managed Microsoft AD

![Alt text](../1900-HYBRID_ENVIRONMENTS_AND_MIGRATION/00_LEARNINGAIDS/DirectoryService-3.png)
Directory Service - AD Connector

![Alt text](<images/Screenshot 2023-10-11 at 23.27.35 - Directory_Service__learn.cantrill.io_and_6_more_pa.png>)
Directory Service - Which one?

## DataSync (9:27)

![Alt text](<images/Screenshot 2023-10-11 at 23.48.43 - DataSync__learn.cantrill.io_and_3_more_pages_-_Per.png>)
AWS DataSync - Overview

![Alt text](<images/Screenshot 2023-10-11 at 23.49.48 - DataSync__learn.cantrill.io_and_3_more_pages_-_Per.png>)
AWS DataSync - Key Features

![Alt text](../1900-HYBRID_ENVIRONMENTS_AND_MIGRATION/00_LEARNINGAIDS/Datasync-1.png)
AWS DataSync - Architecture

## FSx for Windows Servers (11:32)

![Alt text](<images/Screenshot 2023-10-12 at 00.06.03 - [ASSOCIATESHARED]_FSx_for_Windows_Servers__learn.c.png>)
FSx for Windows File Servers - Overview

![Alt text](../1900-HYBRID_ENVIRONMENTS_AND_MIGRATION/00_LEARNINGAIDS/FSX-Windows-1.png)
FSx for Windows File Servers - Architecture

## FSx For Lustre (13:57)

![Alt text](<images/Screenshot 2023-10-12 at 00.24.01 - [ASSOCIATESHARED]_FSx_For_Lustre__learn.cantrill.i.png>)
FSx For Lustre - Overview

![Alt text](../1900-HYBRID_ENVIRONMENTS_AND_MIGRATION/00_LEARNINGAIDS/FSX-Lustre-1.png)
FSx For Lustre - S3 data repository

![Alt text](<images/Screenshot 2023-10-12 at 00.29.37 - [ASSOCIATESHARED]_FSx_For_Lustre__learn.cantrill.i.png>)
FSx For Lustre - Performance

![Alt text](../1900-HYBRID_ENVIRONMENTS_AND_MIGRATION/00_LEARNINGAIDS/FSX-Lustre-2.png)
FSx For Lustre - Architecture

![Alt text](<images/Screenshot 2023-10-12 at 00.33.14 - [ASSOCIATESHARED]_FSx_For_Lustre__learn.cantrill.i.png>)
FSx For Lustre - Key Points

## AWS Transfer Family (10:24)

![Alt text](<images/Screenshot 2023-10-12 at 00.44.53 - [ASSOCIATESHARED]_AWS_Transfer_Family__learn.cantr.png>)
AWS Transfer Family - Overview

![Alt text](../1900-HYBRID_ENVIRONMENTS_AND_MIGRATION/00_LEARNINGAIDS/TransferFamily-1.png)
AWS Transfer Family - Architecture

![Alt text](../1900-HYBRID_ENVIRONMENTS_AND_MIGRATION/00_LEARNINGAIDS/TransferFamily-2.png)
AWS Transfer Family - Endpoint Type

![Alt text](<images/Screenshot 2023-10-12 at 00.49.33 - [ASSOCIATESHARED]_AWS_Transfer_Family__learn.cantr.png>)
AWS Transfer Family - Key Points

## Hybrid and Migration Section Quiz
