# ADVANCED VPC NETWORKING

## VPC Flow Logs (9:56)

![Alt text](<images/Screenshot 2023-10-10 at 22.45.41 - VPC_Flow_Logs__lea_—_Firefox_Developer_Edition.png>)
VPC FLow Logs - Capture traffic metadata, NOT capture contents, NOT realtime

![Alt text](../1800-ADVANCED_VPC_NETWORKING/00_LEARNINGAIDS/VPCFlowLogs-1.png)
VPC FLow Logs - Architecture

![Alt text](../1800-ADVANCED_VPC_NETWORKING/00_LEARNINGAIDS/VPCFlowLogs-2.png)
VPC FLow Logs - Flow Log Records

## Egress-Only Internet Gateway (6:46)

![Alt text](<images/Screenshot 2023-10-10 at 23.00.53 - [ASSOCIATESHARED]_Egress-Only_Internet_gateway__le.png>)
Egress-Only Internet Gateway - Why?

> [!NOTE] What does Egress-Only Internet Gateway do?
>
> Allow outbound (and response) only access to the public AWS services and Public Internet for IPv6 enabled instances or other VPC based services.

![Alt text](../1800-ADVANCED_VPC_NETWORKING/00_LEARNINGAIDS/Egress-Only%2520Internet%2520Gateway.png)
Egress-Only Internet Gateway - Architecture

## VPC Endpoints (Gateway) (11:14)

![Alt text](<images/Screenshot 2023-10-10 at 23.26.37 - [ASSOCIATESHARED]_VPC_Endpoints_(Gateway)__lea_—_F.png>)
VPC Gateway Endpoints: Provide private access to AWS Public Services via Prefix List and Route Table

![Alt text](../1800-ADVANCED_VPC_NETWORKING/00_LEARNINGAIDS/GatewayEndpoints-1.png)
VPC - Without Gateway Endpoints

![Alt text](../1800-ADVANCED_VPC_NETWORKING/00_LEARNINGAIDS/GatewayEndpoints-2.png)
VPC - With Gateway Endpoints

## VPC Endpoints (Interface) (11:26)

![Alt text](<images/Screenshot 2023-10-10 at 23.59.30 - [ASSOCIATESHARED]_VPC_Endpoints_(Interface)__lea_—.png>)
VPC Interface Endpoints - Provide private access to AWS Public Services via DNS

![Alt text](<images/Screenshot 2023-10-11 at 00.01.39 - [ASSOCIATESHARED]_VPC_Endpoints_(Interface)__lea_—.png>)
VPC Interface Endpoints - PrivateDNS

![Alt text](../1800-ADVANCED_VPC_NETWORKING/00_LEARNINGAIDS/InterfaceEndpoints-1.png)
Without Interface Endpoints 🛑

![Alt text](../1800-ADVANCED_VPC_NETWORKING/00_LEARNINGAIDS/InterfaceEndpoints-2.png)
With Interface Endpoints

![Alt text](../1800-ADVANCED_VPC_NETWORKING/00_LEARNINGAIDS/InterfaceEndpoints-3.png)
With Interface Endpoints & PrivateDNS

## [_DEMO_] VPC Endpoints - Interface - PART1 (11:59)

## [_DEMO_] VPC Endpoints - Gateway - PART2 (9:59)

## [_DEMO_] Egress-Only Internet Gateway - PART3 (7:57)

## VPC Peering (9:04)

![Alt text](<images/Screenshot 2023-10-11 at 10.17.02 - [ASSOCIATESHARED]_VPC_Peering__learn.cantrill.io_—.png>)
VPC Peering - Overview

![Alt text](../1800-ADVANCED_VPC_NETWORKING/00_LEARNINGAIDS/VPCPeering.png)
VPC Peering - Architecture

## [_DEMO_] VPC Peering (22:38)

## Advanced VPC Section Quiz
