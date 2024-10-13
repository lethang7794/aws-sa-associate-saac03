# IAM, ACCOUNTS AND AWS ORGANISATIONS

## [_ASSOCIATE_] IAM Identity Policies (15:52)

![Alt text](../0600-IAM_ACCOUNTS_ORGS/00_LEARNINGAIDS/IAMPolicies-1.png)
IAM Policy Document

![Alt text](../0600-IAM_ACCOUNTS_ORGS/00_LEARNINGAIDS/IAMPolicies-2.png)
DENY - ALLOW - DENY

![Alt text](../0600-IAM_ACCOUNTS_ORGS/00_LEARNINGAIDS/IAMPolicies-3.png)
All policies for IAM Identities (User, Role, Group) & AWS Resources are evaluated at the same time.

![Alt text](../0600-IAM_ACCOUNTS_ORGS/00_LEARNINGAIDS/IAMPolicies-4.png)
Inline Policy vs Managed Policy

## [_ASSOCIATE_] IAM Users and ARNs (13:49)

![Alt text](../0600-IAM_ACCOUNTS_ORGS/00_LEARNINGAIDS/IAMUsers-1.png)
IAM Users

![Alt text](<images/Screenshot 2023-10-02 at 12.40.20 - [ASSOCIATESHARED]_IAM_Users_and_ARNs__learn.cantri.png>)
IAM Users - Limitation

> [!NOTE] What is the limit IAM Users per account?

> [!NOTE] How many IAM Groups a IAM User can be a member of?

![Alt text](../0600-IAM_ACCOUNTS_ORGS/00_LEARNINGAIDS/IAMUsers-2.png)
ARNs

> [!NOTE] What is the format of ARN?
>
> - **arn**:_partition_:_service_:_region_:_account-id_:_resource-id_
> - **arn**:_partition_:_service_:_region_:_account-id_:_resource-type_/_resource-id_
> - **arn**:_partition_:_service_:_region_:_account-id_:_resource-type_:_resource-id_
>
> 👉
>
> - 5 to 6 colon `:`
> - _region_ or/and _account-id_ can be omitted.

| **arn** | _partition_                       | _service_                     | _region_                              | _account-id_ | _resource-type_ | _resource-id_ |
| ------- | --------------------------------- | ----------------------------- | ------------------------------------- | ------------ | --------------- | ------------- |
|         | `aws`<br>`aws-cn`<br>`aws-us-gov` | `iam`<br>`s3`<br>`ec2`<br>... | `us-east-1`<br>`ap-southest-1`<br>... |              | `user`          |               |

## [_ASSOCIATE_, _DEMO_] Simple Identity Permissions in AWS (16:06)

## [_ASSOCIATE_] IAM Groups (7:48)

![Alt text](../0600-IAM_ACCOUNTS_ORGS/00_LEARNINGAIDS/IAM-Groups-1.png)
IAM Groups

> [!NOTE] What is IAM Group?
>
> Containers for IAM Users.

> [!NOTE] What are the limits of IAM Group?
>
> - No Nesting.
> - Limit of 300 Groups.

![Alt text](<images/Screenshot 2023-10-02 at 14.31.52 - [ASSOCIATESHARED]_IAM_Groups__learn.cantrill.io_-_.png>)
IAM Group is not a true identity

> [!NOTE] Can a IAM Group be used as a Principle in a policy?
>
> IAM Group can NOT be used as a Principle in a policy. IAM Group is NOT a true identity.

## [_ASSOCIATE_, _DEMO_] Permissions control using IAM Groups (9:24)

## [_ASSOCIATE_] IAM Roles - The Tech (8:13)

![Alt text](../0600-IAM_ACCOUNTS_ORGS/00_LEARNINGAIDS/IAMRoles-1.png)
IAM Role and Assuming an IAM Role

![Alt text](../0600-IAM_ACCOUNTS_ORGS/00_LEARNINGAIDS/IAMRoles-2.png)
Trust Policy vs Permission Policy

> [!NOTE] What is Trust Policy in IAM?

## [_ASSOCIATE_] When to use IAM Roles (15:27)

![Alt text](../0600-IAM_ACCOUNTS_ORGS/00_LEARNINGAIDS/IAMRoles-3.png)
Lambda Execute Role

![Alt text](../0600-IAM_ACCOUNTS_ORGS/00_LEARNINGAIDS/IAMRoles-4.png)
Emergency Role

![Alt text](../0600-IAM_ACCOUNTS_ORGS/00_LEARNINGAIDS/IAMRoles-5.png)
Existing Identities (e.g. Active Directory)

![Alt text](../0600-IAM_ACCOUNTS_ORGS/00_LEARNINGAIDS/IAMRoles-6.png)
Web Identities (e.g. Google, Facebook)

![Alt text](../0600-IAM_ACCOUNTS_ORGS/00_LEARNINGAIDS/IAMRoles-7.png)
AWS Partner Accounts

## Service-linked Roles & PassRole (5:16)

![Alt text](<images/Screenshot 2023-10-02 at 15.44.22 - Service-linked_Roles_&_PassRole__learn.cantrill.io.png>)
Service-linked Roles

> [!NOTE] What is Service-linked Role?

![Alt text](../0600-IAM_ACCOUNTS_ORGS/00_LEARNINGAIDS/ServiceLinkedRole1.png)
Permissions to allow create/edit the service-linked role

![Alt text](../0600-IAM_ACCOUNTS_ORGS/00_LEARNINGAIDS/ServiceLinkedRole2.png)
Pass an existing role to the service

## [_ASSOCIATE_] AWS Organizations (12:56)

![Alt text](<images/Screenshot 2023-10-02 at 16.02.10 - [ASSOCIATESHARED]_AWS_Organizations__learn.cantril.png>)
Management/Master Account

![Alt text](<images/Screenshot 2023-10-02 at 16.03.00 - [ASSOCIATESHARED]_AWS_Organizations__learn.cantril.png>)
Invite Standalone accounts to an AWS Organization

![Alt text](<images/Screenshot 2023-10-02 at 16.03.05 - [ASSOCIATESHARED]_AWS_Organizations__learn.cantril.png>)
Accepting invitations to become member of an AWS Organization

![Alt text](<images/Screenshot 2023-10-02 at 16.03.16 - [ASSOCIATESHARED]_AWS_Organizations__learn.cantril.png>)
Member Accounts

![Alt text](<images/Screenshot 2023-10-02 at 16.04.21 - [ASSOCIATESHARED]_AWS_Organizations__learn.cantril.png>)
Organization Root & Organization Unit (OU)

![Alt text](<images/Screenshot 2023-10-02 at 16.06.44 - [ASSOCIATESHARED]_AWS_Organizations__learn.cantril.png>)
Consolidated Billing

![Alt text](<images/Screenshot 2023-10-02 at 16.09.21 - [ASSOCIATESHARED]_AWS_Organizations__learn.cantril.png>)
Role Switching

## [_ALL_, _DEMO_] AWS Organizations (19:48)

## [_ASSOCIATE_] Service Control Policies (SCPs) (12:44)

![Alt text](../0600-IAM_ACCOUNTS_ORGS/00_LEARNINGAIDS/ServiceControlPolicies-1.png)
Service Control Policies (SCP)

![Alt text](<images/Screenshot 2023-10-02 at 18.57.45 - [ASSOCIATESHARED]_Service_Control_Policies_(SCPs)_.png>)
SCP controls account permissions in an organization

> [!NOTE] At which level the SCP work?
>
> Account-level.

![Alt text](<images/Screenshot 2023-10-02 at 18.59.57 - [ASSOCIATESHARED]_Service_Control_Policies_(SCPs)_.png>)
SCP - Deny List

![Alt text](<images/Screenshot 2023-10-02 at 19.01.01 - [ASSOCIATESHARED]_Service_Control_Policies_(SCPs)_.png>)
SCP - Allow List

![Alt text](../0600-IAM_ACCOUNTS_ORGS/00_LEARNINGAIDS/ServiceControlPolicies-2.png)
Identity Policies and SCPs

> [!NOTE] Can SCP restrict management account?
>
> No.

> [!NOTE] Can SCP restrict root user?
>
> SCP can un-directly control the member account's root user (by control the account's permission)

## [_ALL_, _DEMO_] Using Service Control Policies (16:45)

## [_ASSOCIATE_] CloudWatch Logs (7:16)

![Alt text](<images/Screenshot 2023-10-02 at 20.12.15 - [ASSOCIATESHARED]_CloudWatch_Logs__learn.cantrill..png>)
CloudWatch Logs - Basic

<!-- ![Alt text](../0600-IAM_ACCOUNTS_ORGS/00_LEARNINGAIDS/CloudWatchLogs-1.png) -->

![Alt text](<images/Screenshot 2023-10-02 at 20.15.12 - [ASSOCIATESHARED]_CloudWatch_Logs__learn.cantrill..png>)

CloudWatch Logs - Architecture

> [!NOTE] What is Log Event?

> [!NOTE] What is Log Stream?

> [!NOTE] What is Log Group?

## [_ASSOCIATE_] CloudTrail (11:40)

![Alt text](<images/Screenshot 2023-10-02 at 20.29.57 - [ASSOCIATESHARED]_CloudTrail__learn.cantrill.io_-_.png>)

> [!NOTE] What is CloudTrail Event/Trail?

> [!NOTE] How long is the default CloudTrail history?

> [!NOTE] In CloudTrail, what are Management Events / Data Events?

![Alt text](../0600-IAM_ACCOUNTS_ORGS/00_LEARNINGAIDS/Cloudtrail-1.png)

> [!NOTE] How to implement a central log store for AWS Organization?

![Alt text](<images/Screenshot 2023-10-02 at 20.35.42 - [ASSOCIATESHARED]_CloudTrail__learn.cantrill.io_-_.png>)

> [!NOTE] Is CloudTrail realtime?

## [_ALL_, _DEMO_] Implementing an Organizational Trail (18:23)

## AWS Control Tower 101 (15:42)

![Alt text](<images/Screenshot 2023-10-03 at 10.33.04 - AWS_Control_Tower_101__learn.cantrill.io_-_Persona.png>)

![Alt text](../0600-IAM_ACCOUNTS_ORGS/00_LEARNINGAIDS/AWSControlTower.png)

![Alt text](<images/Screenshot 2023-10-03 at 10.33.42 - AWS_Control_Tower_101__learn.cantrill.io_-_Persona.png>)

![Alt text](<images/Screenshot 2023-10-03 at 10.33.51 - AWS_Control_Tower_101__learn.cantrill.io_-_Persona.png>)

![Alt text](<images/Screenshot 2023-10-03 at 10.34.03 - AWS_Control_Tower_101__learn.cantrill.io_-_Persona.png>)

## IAM & Orgs Section Quiz
