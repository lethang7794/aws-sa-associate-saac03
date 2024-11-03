# VIRTUAL PRIVATE CLOUD (VPC) BASICS

## VPC Sizing and Structure - PART1 (11:48)

![Alt text](<images/Screenshot 2023-10-03 at 20.33.19 - [ASSOCIATESHARED]_VPC_Sizing_and_Structure_-_PART1.png>)
VPC Considerations

![Alt text](<images/Screenshot 2023-10-03 at 20.35.15 - [ASSOCIATESHARED]_VPC_Sizing_and_Structure_-_PART1.png>)
Global Architecture

![Alt text](<images/Screenshot 2023-10-03 at 20.37.30 - [ASSOCIATESHARED]_VPC_Sizing_and_Structure_-_PART1.png>)
IP Ranges to Avoid

![Alt text](<images/Screenshot 2023-10-03 at 20.41.31 - [ASSOCIATESHARED]_VPC_Sizing_and_Structure_-_PART1.png>)
VPC - More Considerations

![Alt text](./material/0800-VIRTUAL_PRIVATE_CLOUD(VPC)/00_LEARNINGAIDS/VPCSizing-1.png)
VPC Sizing

![Alt text](./material/0800-VIRTUAL_PRIVATE_CLOUD(VPC)/00_LEARNINGAIDS/VPCSizing-2.png)
VPC Structure

## VPC Sizing and Structure - PART2 (11:16)

![Alt text](./material/0800-VIRTUAL_PRIVATE_CLOUD(VPC)/00_LEARNINGAIDS/VPCStucture-1.png)
VPC Design - End State

## Custom VPCs - PART1 - THEORY (10:10)

![Alt text](./material/0800-VIRTUAL_PRIVATE_CLOUD(VPC)/00_LEARNINGAIDS/CustomVPC.png)
VPC Design - Basic

![Alt text](<images/Screenshot from 2023-11-08 14-38-56.png>)
Custom VPC: Overview

![Alt text](<images/Screenshot from 2023-11-08 14-39-55.png>)
Custom VPC: IP address

![Alt text](<images/Screenshot from 2023-11-08 14-40-58.png>)
Custom VPC: DNS in the VPC

## [_DEMO_] Custom VPCs - PART2 - DEMO (5:40)

## VPC Subnets (10:42)

![Alt text](<images/Screenshot 2023-10-04 at 11.01.07 - [ASSOCIATESHARED]_VPC_Subnets__learn.cantrill.io_—.png>)
VPC Subnets

> [!NOTE] How many subnets an AZ can have?
>
> An AZ can have many subnets.

> [!NOTE] How many AZs a subnet can have?
>
> A subnet can only be in an AZ.

![Alt text](<images/Screenshot 2023-10-04 at 11.04.01 - [ASSOCIATESHARED]_VPC_Subnets__learn.cantrill.io_—.png>)
Subnet IP Addressing

![Alt text](<images/Screenshot 2023-10-04 at 11.05.37 - [ASSOCIATESHARED]_VPC_Subnets__learn.cantrill.io_—.png>)
VPC Subnets - Auto Assign IP & DHCP

## [_DEMO_] Implement multi-tier VPC subnets (15:24)

| No. | Subnet Name   | Subnet Address | CIDR           | AZ   | IPv6 | Host Address Range          | Broadcast Address |
| --- | ------------- | -------------- | -------------- | ---- | ---- | --------------------------- | ----------------- |
| 1   | sb-reserved-A | 10.16.0.0      | 10.16.0.0/20   | AZ-A | 00   | 10.16.0.1 - 10.16.15.254    | 10.16.15.255      |
| 2   | sb-db-A       | 10.16.16.0     | 10.16.16.0/20  | AZ-A | 01   | 10.16.16.1 - 10.16.31.254   | 10.16.31.255      |
| 3   | sb-app-A      | 10.16.32.0     | 10.16.32.0/20  | AZ-A | 02   | 10.16.32.1 - 10.16.47.254   | 10.16.47.255      |
| 4   | sb-web-A      | 10.16.48.0     | 10.16.48.0/20  | AZ-A | 03   | 10.16.48.1 - 10.16.63.254   | 10.16.63.255      |
| 5   | sb-reserved-B | 10.16.64.0     | 10.16.64.0/20  | AZ-B | 04   | 10.16.64.1 - 10.16.79.254   | 10.16.79.255      |
| 6   | sb-db-B       | 10.16.80.0     | 10.16.80.0/20  | AZ-B | 05   | 10.16.80.1 - 10.16.95.254   | 10.16.95.255      |
| 7   | sb-app-B      | 10.16.96.0     | 10.16.96.0/20  | AZ-B | 06   | 10.16.96.1 - 10.16.111.254  | 10.16.111.255     |
| 8   | sb-web-B      | 10.16.112.0    | 10.16.112.0/20 | AZ-B | 07   | 10.16.112.1 - 10.16.127.254 | 10.16.127.255     |
| 9   | sb-reserved-C | 10.16.128.0    | 10.16.128.0/20 | AZ-C | 08   | 10.16.128.1 - 10.16.143.254 | 10.16.143.255     |
| 10  | sb-db-C       | 10.16.144.0    | 10.16.144.0/20 | AZ-C | 09   | 10.16.144.1 - 10.16.159.254 | 10.16.159.255     |
| 11  | sb-app-C      | 10.16.160.0    | 10.16.160.0/20 | AZ-C | 0A   | 10.16.160.1 - 10.16.175.254 | 10.16.175.255     |
| 12  | sb-web-C      | 10.16.176.0    | 10.16.176.0/20 | AZ-C | 0B   | 10.16.176.1 - 10.16.191.254 | 10.16.191.255     |
| 13  |               | 10.16.192.0    | 10.16.192.0/20 |      |      | 10.16.192.1 - 10.16.207.254 | 10.16.207.255     |
| 14  |               | 10.16.208.0    | 10.16.208.0/20 |      |      | 10.16.208.1 - 10.16.223.254 | 10.16.223.255     |
| 15  |               | 10.16.224.0    | 10.16.224.0/20 |      |      | 10.16.224.1 - 10.16.239.254 | 10.16.239.255     |
| 16  |               | 10.16.240.0    | 10.16.240.0/20 |      |      | 10.16.240.1 - 10.16.255.254 | 10.16.255.255     |

## VPC Routing, Internet Gateway & Bastion Hosts (17:35)

![Alt text](<images/Screenshot 2023-10-04 at 12.19.18 - [ASSOCIATESHARED]_VPC_Routing,_Internet_Gateway_&_.png>)
VPC Router

![Alt text](<images/Screenshot 2023-10-04 at 12.25.43 - [ASSOCIATESHARED]_VPC_Routing,_Internet_Gateway_&_.png>)
Route Tables

> [!NOTE] How many subnets a Route Table can be associated with?
>
> A Route Table can be associated with many subnets.

> [!NOTE] How many Route Tables a subnet can be associated with?
>
> A subnet can be attached with only ONE Route Table.

![Alt text](<images/Screenshot 2023-10-04 at 12.27.13 - [ASSOCIATESHARED]_VPC_Routing,_Internet_Gateway_&_.png>)
Internat Gateway (IGW)

![Alt text](<images/Screenshot 2023-10-04 at 12.28.33 - [ASSOCIATESHARED]_VPC_Routing,_Internet_Gateway_&_.png>)
Using an IGW

![Alt text](./material/0800-VIRTUAL_PRIVATE_CLOUD(VPC)/00_LEARNINGAIDS/IGW.png)
IPv4 Addresses with an IGW - Outbound Traffic

![Alt text](./material/0800-VIRTUAL_PRIVATE_CLOUD(VPC)/00_LEARNINGAIDS/IGW-2.png)
IPv4 Addresses with an IGW - Inbound Traffic

![Alt text](<images/Screenshot 2023-10-04 at 12.33.11 - [ASSOCIATESHARED]_VPC_Routing,_Internet_Gateway_&_.png>)
Bastion Host / Jumpbox

## [_DEMO_] Configuring A4l public subnets and Jumpbox - PART1 (13:45)

## [_DEMO_] Configuring A4l public subnets and Jumpbox - PART2 (11:45)

## Stateful vs Stateless Firewalls (14:04)

![Alt text](./material/0800-VIRTUAL_PRIVATE_CLOUD(VPC)/00_LEARNINGAIDS/StatefulvsStateless-1.png)
TCP

![Alt text](./material/0800-VIRTUAL_PRIVATE_CLOUD(VPC)/00_LEARNINGAIDS/StatefulvsStateless-2.png)
Every "Connection" has 2 parts: REQUEST & RESPONSE

![Alt text](./material/0800-VIRTUAL_PRIVATE_CLOUD(VPC)/00_LEARNINGAIDS/StatefulvsStateless-3.png)
Directionality (Inbound or Outbound) depends on perspective (Client/Server)

![Alt text](./material/0800-VIRTUAL_PRIVATE_CLOUD(VPC)/00_LEARNINGAIDS/StatefulvsStateless-4.png)
With Stateless Firewall, a connection needs 2 rules (1 IN, 1 OUT) to go through

> [!NOTE] With Stateless Firewall, ephemeral port is not the well known port (e.g. 443, 80)

![Alt text](./material/0800-VIRTUAL_PRIVATE_CLOUD(VPC)/00_LEARNINGAIDS/StatefulvsStateless-5.png)
Stateful firewall is intelligent enough to identify the REQUEST and RESPONSE components of a connection as being related

![Alt text](./material/0800-VIRTUAL_PRIVATE_CLOUD(VPC)/00_LEARNINGAIDS/StatefulvsStateless-6.png)

## Network Access Control Lists (NACLs) (12:38)

![Alt text](./material/0800-VIRTUAL_PRIVATE_CLOUD(VPC)/00_LEARNINGAIDS/NACL-1.png)
NACLs filter traffic across the subnet's boundary

> [!NOTE] What is NACL?
>
> A set of rules grouped into:
>
> - INBOUND rules 👉 match traffic ENTERING the subnet
> - OUTBOUND rules 👉 match traffic LEAVING the subnet

> [!NOTE] What does NACL do?
>
> NACLs filter traffic across the subnet's boundary.

> [!NOTE] How are NACL's rules processed?
>
> NACL's rules are process in order:
>
> - Lowest rule number first. 🤏1️⃣
> - Once a match occurs, processing STOPS. 🛑
> - If nothing else matched, `*` is process 👈 implicit DENY ❌

![Alt text](./material/0800-VIRTUAL_PRIVATE_CLOUD(VPC)/00_LEARNINGAIDS/NACL-2.png)
NACLs are stateless firewall

![Alt text](./material/0800-VIRTUAL_PRIVATE_CLOUD(VPC)/00_LEARNINGAIDS/NACL-3.png)
Rule-pairs (`app port` & `ephemeral port`) are needed on each NACL for each communication type which occurs:

- 🔄️ _within_ a VPC
- ➡️ _to_ a VPC
- ⬅️ _from_ a VPC

![Alt text](./material/0800-VIRTUAL_PRIVATE_CLOUD(VPC)/00_LEARNINGAIDS/NACL-4.png)
Default NACL - The NACL created with a VPC

> [!NOTE] What does Default NACL do?
>
> Default NACL does NOTHING. It has an ALLOW ALL rule.

![Alt text](./material/0800-VIRTUAL_PRIVATE_CLOUD(VPC)/00_LEARNINGAIDS/NACL-5.png)
Custom NACL DENIED ALL traffic after created

![Alt text](<images/Screenshot 2023-10-04 at 14.47.37 - [ASSOCIATESHARED]_Network_Access_Control_Lists_(NA.png>)
NACL - Summary

> [!NOTE] Which AWS resources can be use with NACLs?
>
> NACLS can only be used with subnets.

> [!NOTE] How many subnets a NACL can be associated with?
>
> A NACL can be associated with MANY subnets.

> [!NOTE] How many NACLs a subnet can have?
>
> A subnet can only have ONE (1) NACL.

## Security Groups (SG) (11:48)

![Alt text](<images/Screenshot 2023-10-04 at 15.31.50 - [ASSOCIATESHARED]_Security_Groups_(SG)__learn.cant.png>)
Security Group (SG) is STATEFUL firewall

> [!NOTE] Which type of rules a SG can have?
>
> SG can only have ALLOW rule.
>
> 👉 SG can't block specific bad actors 😈

> [!NOTE] Can SG deny a traffic?
>
> No. SG can't deny traffic. It can't block bad actors.
>
> Because SG only support ALLOW rules.

> [!NOTE] Which kind of sources does SG rules support?
>
> SG rules supports:
>
> - CIDR blocks
> - Many AWS logical resources:
>   - Other SGs
>   - Itself 🤯
>   - Prefix Lists 📃

> [!NOTE] To which, the SGs are attached to?
>
> SGs are attached to ENI, not the instances.

![Alt text](./material/0800-VIRTUAL_PRIVATE_CLOUD(VPC)/00_LEARNINGAIDS/SG-1.png)
SG is applied to all traffic entering or leaving the ENI

![Alt text](./material/0800-VIRTUAL_PRIVATE_CLOUD(VPC)/00_LEARNINGAIDS/SG-2.png)
An SG reference applies to anything which has the SG attached

![Alt text](./material/0800-VIRTUAL_PRIVATE_CLOUD(VPC)/00_LEARNINGAIDS/SG-3.png)
With SG reference, any new instances uses a SG has that SG reference ALLOW rule

![Alt text](./material/0800-VIRTUAL_PRIVATE_CLOUD(VPC)/00_LEARNINGAIDS/SG-4.png)
With SG Self reference, the instances can scale easily

## Network Address Translation (NAT) & NAT Gateway - PART1 (13:43)

![Alt text](<images/Screenshot 2023-10-04 at 16.14.22 - [ASSOCIATESHARED]_Network_Address_Translation_(NAT.png>)

> [!NOTE] AWS Internet Gateway (AWS IGW) is a NAT (static NAT)

> [!NOTE] What can NAT can be used for?
>
> - IP masquerading 👺: hiding CIDR blocks behind one IP.
> - Gives Private CIDR block outgoing internet access.

![Alt text](<images/Screenshot 2023-10-04 at 16.19.22 - [ASSOCIATESHARED]_Network_Address_Translation_(NAT.png>)
NAT Architecture - Example

![Alt text](<images/Screenshot 2023-10-04 at 16.19.40 - [ASSOCIATESHARED]_Network_Address_Translation_(NAT.png>)
Routing a package from an instance in a private subnet ...

![Alt text](<images/Screenshot 2023-10-04 at 16.20.26 - [ASSOCIATESHARED]_Network_Address_Translation_(NAT.png>)
... through the NAT Gateway (in a public subnet) ...

![Alt text](<images/Screenshot 2023-10-04 at 16.20.58 - [ASSOCIATESHARED]_Network_Address_Translation_(NAT.png>)
... through the Internet Gateway, then to the Public Internet.

![Alt text](<images/Screenshot 2023-10-04 at 16.25.14 - [ASSOCIATESHARED]_Network_Address_Translation_(NAT.png>)
NAT Gateways run from a public subnet, uses Elastic IPs

> [!NOTE] What level of resilient NAT Gateway is?
>
> NAT Gateway is an AZ resilient service.

> [!NOTE] How to have the region resilience for NAT Gateways?
>
> NATGW in each AZ, and Route Tables in each AZ targets that NATGW.

## Network Address Translation (NAT) & NAT Gateway - PART2 (11:08)

<!-- ![Alt text](<Screenshot 2023-10-04 at 16.35.48 - [ASSOCIATESHARED]_Network_Address_Translation_(NAT.png>) -->

![Alt text](<images/Screenshot 2023-10-04 at 16.36.12 - [ASSOCIATESHARED]_Network_Address_Translation_(NAT.png>)
VPC Design - NATGW Full Resilience

![Alt text](<images/Screenshot 2023-10-04 at 16.37.34 - [ASSOCIATESHARED]_Network_Address_Translation_(NAT.png>)
NAT Instance vs NAT Gateway

> [!NOTE] What is NAT Instance?

![Alt text](<images/Screenshot 2023-10-04 at 16.42.38 - [ASSOCIATESHARED]_Network_Address_Translation_(NAT.png>)
NAT Gateway and IPv6

> [!NOTE] Which kind of IP version can NAT Gateway work with?
>
> NAT Gateway only works with IPv4, it doesn't work with IPv6.
>
> All IPv6 addresses in AWS are publicly routable. The IGW works with IPv6 directly without the NAT Gateway.

## [_DEMO_] Implementing private internet access using NAT Gateways (19:25)

## VPC Basics Section Quiz
