# HA & SCALING

## Regional and Global AWS Architecture (10:42)

![Alt text](../1500-HA_and_SCALING/00_LEARNINGAIDS/RegionalandGlobalArchitecture-1.png)
Regional & Global AWS Architecture

![Alt text](../1500-HA_and_SCALING/00_LEARNINGAIDS/RegionalandGlobalArchitecture-2.png)
The tiers (components) of an application

## Evolution of the Elastic Load Balancer (4:10)

![Alt text](<Screenshot 2023-10-08 at 19.38.23 - [ASSOCIATESHARED]_Evolution_of_the_Elastic_Load_Ba.png>)
Elastic Load Balancer (ELB) - Evolution

> What are the 3 types of load balancers in AWS?
>
> - v1:
>   - Classic Load Balancer (CLB): 2009
> - v2:
>   - Application Load Balancer (ALB): HTTP/s, gRPC 👈 Layer 4
>   - Network Load Balancer (NLB): TCP/UDP, TLS 👈 Layer 7
>   - ??? Gateway LB
>
> ([AWS ELB Comparisons](https://aws.amazon.com/elasticloadbalancing/features/?nc=sn&loc=2&dn=1#Product_comparisons))

## Elastic Load Balancer Architecture - PART1 (10:18)

![Alt text](../1500-HA_and_SCALING/00_LEARNINGAIDS/ELB-2.png)
ELB - Architecture

> What is the benefits of Load Balancer?
>
> - Distributing workloads across multiple compute resources 👉 HA & FT
> - Decoupling application tiers 👉 ↕️ compute resources without disrupting the overall flow of our app.
> - Or:
>   - Sending request only to healthy ones.
>   - Offloading encryption/decryption from computer resources to LB.
>
> ([Source](https://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/what-is-load-balancing.html#load-balancer-benefits))

## Elastic Load Balancer Architecture - PART2 (12:32)

![Alt text](<Screenshot 2023-10-08 at 19.55.57 - [ASSOCIATESHARED]_Elastic_Load_Balancer_Architectu.png>)
ELB - Without Cross-Zone LB

![Alt text](../1500-HA_and_SCALING/00_LEARNINGAIDS/ELB-3.png)
ELB - With Cross-Zone LB

![Alt text](<Screenshot 2023-10-08 at 19.58.53 - [ASSOCIATESHARED]_Elastic_Load_Balancer_Architectu.png>)
ELB - Summary

![Alt text](../1500-HA_and_SCALING/00_LEARNINGAIDS/ELB-1.png)
ELB - Internet-facing LB & Internal LB

> What are 2 types [scheme](https://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/how-elastic-load-balancing-works.html#load-balancer-scheme) of AWS ELB?
>
> - **Internet-facing LB**: the nodes have _public IP_ addresses.
> - **Internal LB**: the nodes have only _private IP_ addresses.

## Application Load balancing (ALB) vs Network Load Balancing (NLB) (16:20)

![Alt text](../1500-HA_and_SCALING/00_LEARNINGAIDS/ALBvsNLB-1.png)
LB Consolidation 🏳️‍🌈

> Why AWS Classic Load Balancer don't scale?
>
> CLB don't support TLS [Server Name Indicator (SNI)](https://www.cloudflare.com/learning/ssl/what-is-sni/).
>
> 😭 Every unique host name requires an individual CLB.

> What is LB Consolidation?
>
> When multiple websites are hosted on one server (the LB) and share a single IP address.

> How does AWS v2 LBs allows consolidation?
>
> AWS v2 ALB support _rules_ and _target groups_.
>
> Using an ALB and its rules based on TLS SNI allows consolidation.

![Alt text](<Screenshot 2023-10-08 at 20.43.14 - [SHAREDALL]_Application_Load_balancing_(ALB)_vs_Ne.png>)
ALB

![Alt text](<Screenshot 2023-10-08 at 20.44.41 - [SHAREDALL]_Application_Load_balancing_(ALB)_vs_Ne.png>)
ALB - Rules

![Alt text](../1500-HA_and_SCALING/00_LEARNINGAIDS/ALBvsNLB-2.png)
ALB - Rules Example

![Alt text](<Screenshot 2023-10-08 at 20.49.25 - [SHAREDALL]_Application_Load_balancing_(ALB)_vs_Ne.png>)
NLB

![Alt text](<Screenshot 2023-10-08 at 20.50.18 - [SHAREDALL]_Application_Load_balancing_(ALB)_vs_Ne.png>)
NLB vs ALB - Exam Tips

> Which type of ELB can have a static IP?
>
> Only NLB can have a _static_ IP.

## Launch Configuration and Templates (4:00)

![Alt text](<Screenshot 2023-10-08 at 23.19.53 - [ASSOCIATESHARED]_Launch_Configuration_and_Templat.png>)
Launch Configuration (LC) & Launch Template (LT)

![Alt text](../1500-HA_and_SCALING/00_LEARNINGAIDS/LCandLT.png)
LC & LT - Architecture

## Auto-Scaling Groups (16:01)

![Alt text](<Screenshot 2023-10-08 at 23.29.11 - [ASSOCIATESHARED]_Auto-Scaling_Groups__learn.cantr.png>)
ASG - Automatic Scaling EC2 instances

![Alt text](../1500-HA_and_SCALING/00_LEARNINGAIDS/ASG-1.png)
ASG - Scaling Polices automatically adjust the Desired Capacity

![Alt text](../1500-HA_and_SCALING/00_LEARNINGAIDS/ASG-2.png)
ASG - Architecture

![Alt text](<Screenshot 2023-10-08 at 23.33.54 - [ASSOCIATESHARED]_Auto-Scaling_Groups__learn.cantr.png>)
ASG - Scaling Polices

![Alt text](../1500-HA_and_SCALING/00_LEARNINGAIDS/ASG-3.png)
ASG + LBs

![Alt text](<Screenshot 2023-10-08 at 23.38.31 - [ASSOCIATESHARED]_Auto-Scaling_Groups__learn.cantr.png>)
ASG - Scaling Processes

![Alt text](<Screenshot 2023-10-08 at 23.41.22 - [ASSOCIATESHARED]_Auto-Scaling_Groups__learn.cantr.png>)
ASG - Summary

## ASG Scaling Policies (10:23)

![Alt text](<Screenshot 2023-10-09 at 00.05.58 - [ASSOCIATESHARED]_ASG_Scaling_Policies__learn.cant.png>)
ASG Scaling Policies

![Alt text](../1500-HA_and_SCALING/00_LEARNINGAIDS/ASG-Policies-1.png)
ASG Scaling Policies - Simple Scaling

![Alt text](../1500-HA_and_SCALING/00_LEARNINGAIDS/ASG-Policies-2.png)
ASG Scaling Policies - Step Scaling

## ASG Lifecycle Hooks (4:41)

![Alt text](<Screenshot 2023-10-09 at 00.16.43 - [ASSOCIATESHARED]_ASG_Lifecycle_Hooks__learn.cantr.png>)
ASG Lifecycle Hooks

![Alt text](<Screenshot 2023-10-09 at 00.19.43 - [ASSOCIATESHARED]_ASG_Lifecycle_Hooks__learn.cantr.png>)
ASG - Without Lifecycle Hooks

![Alt text](../1500-HA_and_SCALING/00_LEARNINGAIDS/ASG-LifecycleHooks-1.png)
ASG - With Lifecycle Hooks

## ASG HealthCheck Comparison - EC2 vs ELB (3:38)

![Alt text](<Screenshot 2023-10-09 at 00.30.49 - [ASSOCIATESHARED]_ASG_HealthCheck_Comparison_-_EC2.png>)
ASG - 3 types of HealthCheck

> What are 3 types of ASG HealthCheck?
>
> - EC2 (Default)
>
>   - Hardware issue of EC2 host
>   - Software issue of EC2 instance
>
> - ELB
>
>   More application aware (Layer 7).
>
> - Custom
>
>   Instances mark healthy/unhealthy by an external system.s

## SSL Offload & Session Stickiness (12:11)

![Alt text](../1500-HA_and_SCALING/00_LEARNINGAIDS/ELBListners.png)
ELB - SSL Offload

> What are 3 ways that ELB's can handle SSL?
>
> - Bridging (Default): HTTPS <-> HTTPS
> - Pass-through: TCP
> - Offload: HTTPS <-> HTTP

![Alt text](../1500-HA_and_SCALING/00_LEARNINGAIDS/SessionStickiness.png)
ELB - Connection Stickiness

## [_DEMO_] Seeing Session Stickiness in Action (12:57)

## [_ADVANCED_DEMO_] Architecture Evolution - STAGE1 - PART1 (14:24)

## [_ADVANCED_DEMO_] Architecture Evolution - STAGE1 - PART2 (10:43)

## [_ADVANCED_DEMO_] Architecture Evolution - STAGE2 (12:58)

## [_ADVANCED_DEMO_] Architecture Evolution - STAGE3 (19:30)

## [_ADVANCED_DEMO_] Architecture Evolution - STAGE4 (18:04)

## [_ADVANCED_DEMO_] Architecture Evolution - STAGE 5 - PART1 (11:31)

## [_ADVANCED_DEMO_] Architecture Evolution - STAGE 5 - PART2 (14:56)

## [_ADVANCED_DEMO_] Architecture Evolution - STAGE6 (5:48)

## Gateway Load Balancer (13:40)

![Alt text](../1500-HA_and_SCALING/00_LEARNINGAIDS/GWLB-1.png)
Why GWLB?

![Alt text](<Screenshot 2023-10-09 at 11.34.24 - Gateway_Load_Balancer__learn.cantril_—_Firefox_Dev.png>)
What is GWLB?

![Alt text](../1500-HA_and_SCALING/00_LEARNINGAIDS/GWLB-2.png)
How GWLB works?

![Alt text](../1500-HA_and_SCALING/00_LEARNINGAIDS/GWLB-3.png)
GWLB - Architecture

## HA and Scaling Section Quiz
