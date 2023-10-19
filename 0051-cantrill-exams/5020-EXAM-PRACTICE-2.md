# EXAM PRACTICE - 2

Scored: 49/61 (80%)

## Q4. EC2: Access AWS resources?

EC2 Instance Role (EC2 Instance Profile)

## Q28. S3: Encryption

SSE-S3: Admin can see the data ⭐
SSE-C: Custom's Key ⭐⭐
SSE-KMS: Key Rotation, Role Separation ⭐⭐⭐

## Q30. Site to Site VPN - Problem

## Q31. DDoS Attach + ALB

AWS Shield Standard: L3/L4
AWS Shield Advanced: L7 👉 DDoS Protection

## Q35. Scale out based on S3 event

SNS -> SQS -> ASG

## Q36. NACL vs SG

- NACL:

  - Associated with a subnet 👉 applied to all instances in that subnet
  - Support both ALLOW/DENY rule

- SG:
  - Associated with an instance
  - Only support ALLOW rule

## Q46. Which components are needed to create a custom public VPC for an EC2 instance to access public internet?

![Alt text](./images/vpc-resource-map.png)
VPC Resource Map

- _Virtual Private Cloud (VPC)_

  - _Availability Zones_

    - AZ-A

      - _Subnets_: Need connect to public internet

        - _Subnet_: (**Public**)

          - EC2 Instance:

            - Associated SG
            - Be default has no public IPv4 address 👉 Be default, these instances can communicate with each other, but can't access the internet.

          - Associated _NACL_.
          - Associated _Route Table_ (or default main route table)
            - route traffics to _IGW_

        - _Subnet_: (**Private)**

          - EC2 Instance:

            - Associated SG

          - Associated _NACL_.
          - Associated _Route Table_ (or default main route table)
            - route traffics to _NATGW_

      - _NAT Gateways (NATGW)_

    - AZ-B

  - _Router_:

    - _Route Tables_: Explicitly associate a subnet with a particular route table.
    - _Main Route Table_: Otherwise, the subnet is implicitly associated with the main route table.

  - _NACLs_:
    - Associated with _subnets_
    - ALLOW/**DENY** IN **OR** OUTBOUND
  - _Default NACL_: ALLOW all traffics (~ Has no effect)

  - _Security Groups (SGs)_:

    - Associated with _AWS resources_
    - ALLOW IN (**&** OUTBOUND)

- AWS Public Zone

  - _Internet Gateway (IGW)_

- Public Internet

---

![Alt text](./images/default-vpc.png)

- [_Default VPC_](https://docs.aws.amazon.com/vpc/latest/userguide/default-vpc.html): `172.31.0.0/16`

  - AZs:

    - AZ-A

      - [_Default Subnet_](https://docs.aws.amazon.com/vpc/latest/userguide/default-vpc.html#default-subnet) (**Public**): `/20`

        - EC2 instance: (if created)

          - Automatically assign public DNS hostname with public IP addresses

        - Associated with _default NACL_
        - Associated with _main route table_

    - AZ-B
    - AZ-C

  - _Router_:

    - _Main Route Table_:

      ![Alt text](./images/default-vpc-main-route-table.png)

      - Send all (`0.0.0.0/0`) traffics to the IGW.

  - [_Default NACL_](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-network-acls.html#default-network-acl): ALLOW all traffics (~ Has no effect): associated with _default VPC_

    ![Alt text](<./images/Screenshot from 2023-10-18 14-15-00.png>)

  - [_Default SG_](https://docs.aws.amazon.com/vpc/latest/userguide/default-security-group.html): associated with _default VPC_

    ![Alt text](<./images/Screenshot from 2023-10-18 14-19-05.png>)

  - Associate the _default DHCP options set_ for your AWS account with _default VPC_.

- AWS Public Zone:

  - _IGW_: connected to _default VPC_.

## Q58. VPC: Private Subnet. How to ensure the instance have outgoing access to the internet?

- IPv4: Use a NATGW

- IPv6: Use a Egress-Only IGW

## Q47. RDS Single AZ vs RDS Multi-AZ vs RDS Multi-Region vs RDS Read Replicas

- RDS Single AZ

- [RDS Multi-AZ](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.MultiAZ.html): 1 or 2 standby DB instances 👉 high availability

  - [RDS Multi-AZ **Instance**](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.MultiAZSingleStandby.html): Multi-AZ with one standby

    - **1 _Primary_** instance
    - **1 _Standby_** replica:

      - can't be used for reads / write 👈 not for performance scaling, only for availability
      - kept in sync _Synchronously_ with the primary instance

  - [RDS Multi-AZ **Cluster**](<https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RDS_Fea_Regions_DB-eng.Feature.MultiAZDBClusters.html>: Multi-AZ with two readable standbys

    - **1 _Writer_** DB instance
    - **2 _Reader_** DB instances:

      - can be used for read 👈 limited read scaling
      - kept in sync _Synchronously_ with the Writer instance

  [Multi-AZ Comparison Table](https://aws.amazon.com/rds/features/multi-az#Comparison_Table)

- RDS Multi-Region: 👉 disaster recovery and local performance (Not supported for all DB engines)

  - Aurora:

    - Aurora Global Databases
    - Aurora Multi-Master:
      - Multiple read-write instances of your Aurora database across multiple AZs.
      - Multi-Master is no longer available as of Feb 28, 2023. [Source](https://aws.amazon.com/about-aws/whats-new/2019/08/amazon-aurora-multimaster-now-generally-available/)

  - Other engines:

    - Multi-Region = [Cross-Region Read Replicas](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RDS_Fea_Regions_DB-eng.Feature.CrossRegionReadReplicas.html)
    - Multi-Region = [Cross-Region automated backups](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.RDS_Fea_Regions_DB-eng.Feature.CrossRegionAutomatedBackups.html)

- RDS Read Replica: 👉 scalability (performance)

  Scale out beyond the capacity constraints of a single DB instance for read-heavy database workloads.

  Maximum Read Replica per DB instance:

  - 5: Oracle, SQL Server
  - 15: MySQL, MariaDB, PostgreSQL, (and Aurora)

  References:

  - [Amazon RDS Read Replicas](https://aws.amazon.com/rds/features/read-replicas/)
  - [Read replicas, Multi-AZ deployments, and multi-region deployments](https://aws.amazon.com/rds/features/read-replicas/#Read_replicas.2C_Multi-AZ_deployments.2C_and_multi-region_deployments)
  - [Working with DB instance read replicas | Amazon RDS User Guide](https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/USER_ReadRepl.html)
  - [Replication with Amazon Aurora MySQL](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Replication.html)

|                       | Endpoints                                           | High Availability | **Read** Scalability |
| --------------------- | --------------------------------------------------- | ----------------- | -------------------- |
| Single AZ             | Instance endpoint [1]                               | 🔳                | 🔳                   |
| Multi-AZ Instance     | Instance endpoint                                   | ⬜                | 🔳                   |
|                       | (Automatically failover to standby replica [5])     |                   |                      |
|                       |                                                     |                   |                      |
| Multi-AZ Cluster [10] | Multiple:                                           | ⬜⬜              | ⬜⬜                 |
|                       | - _Cluster endpoint_ (_Writer endpoint_)            |                   |                      |
|                       | - _Reader endpoints_                                |                   |                      |
|                       | - _Instance endpoints_                              |                   |                      |
|                       |                                                     |                   |                      |
| Read Replicas         | Multiple:                                           | ⬜⬜⬜            | ⬜⬜⬜               |
|                       | - Source DB instance endpoint                       |                   |                      |
|                       | - Each replica has its own _instance endpoint_ [20] |                   |                      |
|                       | - (Aurora) Custom endpoints [21]                    |                   |                      |

[1]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/CHAP_CommonTasks.Connect.html#CHAP_CommonTasks.Connect.EndpointAndPort
[5]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/Concepts.MultiAZSingleStandby.html#Concepts.MultiAZ.Failover
[10]: https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/multi-az-db-clusters-concepts-connection-management.html#multi-az-db-clusters-concepts-connection-management-endpoint-types
[20]: https://repost.aws/knowledge-center/requests-rds-read-replicas
[21]: https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Overview.Endpoints.html#Aurora.Overview.Endpoints.Types

## Q50. ENI

An EC2 instance can have multiple [ENIs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html) attached, but these ENIs must be in the same AZ.

## Q54. Multicast for EC2

Transit Gateway supports routing multicast traffic between subnets of attached VPCs

## Q55. Big number of users need to access AWS resources?

## Q56. EC2 - [Connect to Linux instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/connect-to-linux-instance.html)

- Connect from **your** local OS (machine)

  - SSH

- Connect from **any** local OS (machine)

  - [Session Manager](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/session-manager-to-linux.html):

    - Introduced in [Sep 2018](https://aws.amazon.com/about-aws/whats-new/2018/09/introducing-aws-systems-manager-session-manager/)

    - Provides a browser-based

      - interactive shell, CLI
      - remote desktop access for managing instances on your cloud, or on-premises and edge devices

      without the need to open inbound ports, manage SSH keys, or use bastion hosts

    - [Setting up Session Manager](https://docs.aws.amazon.com/systems-manager/latest/userguide/session-manager-getting-started.html)

  - [EC2 Instance Connect](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/connect-linux-inst-eic.html):

    - Introduced in [June 2019](https://aws.amazon.com/about-aws/whats-new/2019/06/introducing-amazon-ec2-instance-connect/).

    - With EC2 Instance Connect, you use IAM policies and principals to control SSH access to your instances, removing the need to share and manage SSH key.

      - Option 1: Using your own key and any SSH client

        - Manually create SSH.

          ```shell
          $ ssh-keygen -t rsa -f my_key
          ```

        - Use EC2 Instance Connect to push our SSH public key to the instance.

          ```shell
          $ aws ec2-instance-connect send-ssh-public-key
          ```

        - Connect to the instance using our private key

          ```shell
          $ ssh 0i my_key <EC2_INSTANCE_DNS_NAME_OR_IP_ADDRESS>
          ```

      - Option 2: Using AWS CLI `ec2-instance-connect ssh` command

        - Specify the instance ID

          ```shell
          $ aws ec2-instance-connect ssh --instance-id i-1234567890example
          ```

        - Specify the instance ID and our own key

          ```shell
          $ aws ec2-instance-connect ssh --instance-id i-1234567890example --private-key-file /path/to/key.pem
          ```

    - With EC2 Instance Connect Endpoint (introduced in [Jun 2023](https://aws.amazon.com/about-aws/whats-new/2023/06/amazon-ec2-instance-connect-ssh-rdp-public-ip-address/)), the EC2 instance even doesn't need a public IP address.

## Q57. SQS & ASG scale based on queue length: What will happen if SQS doesn't have Dead Letter Queue?

Messages fill up the queue, ASG scale up 👉 A lot of money will go away

## Q58. How to ensure EC2 instances in a private subnet have only outgoing access to the internet?
