# NETWORK STORAGE & DATA LIFECYCLE

## EFS Architecture (9:05)

![Alt text](<images/Screenshot 2023-10-08 at 16.56.17 - [ASSOCIATESHARED]_EFS_Architecture__learn.cantrill.png>)
EFS - Overview

> [!NOTE] Which OS does AWS EFS support?
>
> AWS EFS is an implement of NFSv4, which can only be mounted in Linux.

> [!NOTE] How to access an AWS EFS?
>
> The EFS can be accessed:
>
> - inside a VPC.
> - from on-premises: via VPN or DX.

![Alt text](./material/1400-NETWORK_STORAGE_and_DATA_LIFECYCLE/00_LEARNINGAIDS/EFS-1.png)
EFS - Architecture

![Alt text](<images/Screenshot 2023-10-08 at 16.59.39 - [ASSOCIATESHARED]_EFS_Architecture__learn.cantrill.png>)
EFS - Performance

> [!NOTE] Which configuration impact an [EFS performance](https://docs.aws.amazon.com/efs/latest/ug/performance.html)?
>
> - Storage Class:
>
>   - EFS `One Zone` / One Zone-IA
>   - **EFS `Standard`** / Standard-IA
>   - EFS `Archive`
>
> - Performance Mode:
>
>   - **`General Purpose` mode** (default - 99.9% of uses): Lowest latency
>   - `Max I/O` mode: Highly parallelized workloads that can tolerate higher latencies
>
> - Throughput Mode:
>
>   - `Bursting` mode: Throughput scale with storage
>   - Enhanced
>     - **`Elastic` mode** (default - recommend): Spiky/unpredictable workloads
>     - `Provisioned` mode: Known performace requirements; or throughput > 5% average-to-peak ratio

## [_DEMO_] Implementing EFS - PART1 (8:51)

## [_DEMO_] Implementing EFS - PART2 (11:32)

## [_DEMO_] Using EFS with Wordpress (16:00)

![Alt text](<images/Screenshot 2023-10-08 at 18.09.11 - [ASSOCIATESHARED]_[DEMO]_Using_EFS_with_Wordpress_.png>)

## AWS Backup (6:36)

![Alt text](./material/1400-NETWORK_STORAGE_and_DATA_LIFECYCLE/00_LEARNINGAIDS/AWSBackup.png)
AWS Backup supports a wide range of [AWS services](https://aws.amazon.com/backup-restore/services)

![Alt text](<images/Screenshot 2023-10-08 at 18.15.13 - AWS_Backup__learn.cantrill.io_—_Firefox_Developer_.png>)
AWS Backup - Summary

## Network Storage Section Quiz
