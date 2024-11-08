# NETWORKING AND TECHNICAL FUNDAMENTALS

## OSI 7-Layer Networking Model

### [OSI Model](https://www.wikiwand.com/en/OSI_model) Introduction (4:46)

![Alt text](<images/Screenshot 2023-09-28 at 11.06.48 - OSI_Model_Introduction__learn.cantrill.io_-_Person.png>)

![Alt text](<images/Screenshot 2023-09-28 at 11.08.19 - OSI_Model_Introduction__learn.cantrill.io_-_Person.png>)

### Layer 1 - Physical (10:00)

![Alt text](<images/Screenshot 2023-09-28 at 11.15.25 - Layer_1_-_Physical__learn.cantrill.io_-_Personal_-.png>)

![Alt text](<images/Screenshot 2023-09-28 at 11.17.54 - Layer_1_-_Physical__learn.cantrill.io_-_Personal_-.png>)

![Alt text](<images/Screenshot 2023-09-28 at 11.19.39 - Layer_1_-_Physical__learn.cantrill.io_-_Personal_-.png>)

### Layer 2 - DataLink - PART1 (8:47)

![Alt text](<images/Screenshot 2023-09-28 at 11.27.48 - Layer_2_-_DataLink_-_PART1__learn.cantrill.io_-_Pe.png>)

> [!NOTE] **MAC vs MAC Address**?
>
> - [MAC](https://www.wikiwand.com/en/Medium_access_control): Medium Access Control, also called Media Access Control
> - [MAC Address](https://www.wikiwand.com/en/MAC_address): Medium Access Control Address,
>
>   - also known as _hardware address_, or _physical address_
>   - a _unique identifier_ assigned to a **network interface controller** (NIC) for use as a network address in communications within a network segment

![Alt text](<images/Screenshot 2023-09-28 at 11.28.56 - Layer_2_-_DataLink_-_PART1__learn.cantrill.io_-_Pe.png>)

### Layer 2 - DataLink - PART2 (14:24)

![Alt text](<images/Screenshot 2023-09-28 at 12.15.32 - Layer_2_-_DataLink_-_PART2__learn.cantrill.io_and_.png>)
_Left game sends Frame F1 to Right game_

![Alt text](<images/Screenshot 2023-09-28 at 12.16.45 - Layer_2_-_DataLink_-_PART2__learn.cantrill.io_and_.png>)
_Right game sends Frame F2 to Left game_ - Carrier Sense Multiple Access ([CSMA](https://www.wikiwand.com/en/Carrier-sense_multiple_access_with_collision_detection))

> [!NOTE] Layers are independent
>
> Conceptually, left L2 is talking to right L2.

![Alt text](<images/Screenshot 2023-09-28 at 12.17.36 - Layer_2_-_DataLink_-_PART2__learn.cantrill.io_and_.png>)
Collision Detection (CD)

![Alt text](<images/Screenshot from 2023-10-29 01-24-02.png>)
OSI Layer 2 - Try using a Hub

![Alt text](<images/Screenshot from 2023-10-29 01-26-19.png>)
OSI Layer 2 - Using a Switch - MAC Address Table

![Alt text](<images/Screenshot from 2023-10-29 01-27-19.png>)
OSI Layer 2 Data Link: MAC Address 👉️ Median Access Control & Collision Detection, Switch

### Layer 3 - Network - PART1 (12:06)

![Alt text](<images/Screenshot 2023-09-28 at 12.57.12 - Layer_3_-_Network_-_PART1__learn.cantrill.io_and_1.png>)
OSI Layer 3 - Layer 3*LAN (Local Area Network)* use Ethernet protocol

![Alt text](<images/Screenshot 2023-09-28 at 12.58.27 - Layer_3_-_Network_-_PART1__learn.cantrill.io_and_1.png>)
OSI Layer 3 - _Long distant point to point (P2P) links_ use other protocols: PPP/MPLS/ATM...

![Alt text](<images/Screenshot 2023-09-28 at 12.58.41 - Layer_3_-_Network_-_PART1__learn.cantrill.io_and_1.png>)
OSI Layer 3 - _Internet Protocol (IP)_, a **Layer-3** protocol, moves data between LAN without direct P2P links, by adding cross network _IP addressing_ and _routing_

![Alt text](<images/Screenshot 2023-09-28 at 12.58.57 - Layer_3_-_Network_-_PART1__learn.cantrill.io_and_1.png>)
OSI Layer 3 - _IP Packets_ are moved step by step from **source** to **destination** via **intermediate** networks, encapsulated in different **frames** along the way.

![Alt text](<images/Screenshot 2023-09-28 at 12.59.07 - Layer_3_-_Network_-_PART1__learn.cantrill.io_and_1.png>)
OSI Layer 3 - _Routers_ (L3) devices, remove frame encapsulation and add **new frame encapsulation** at every **hop** 1️⃣2️⃣3️⃣4️⃣

![Alt text](<images/Screenshot 2023-09-28 at 13.02.26 - Layer_3_-_Network_-_PART1__learn.cantrill.io_and_1.png>)
OSI Layer 3 - IP v4 package structure

![Alt text](<images/Screenshot 2023-09-28 at 13.03.58 - Layer_3_-_Network_-_PART1__learn.cantrill.io_and_1.png>)
OSI Layer 3 - IP v6 package structure

### Layer 3 - Network - PART2 (19:13)

![Alt text](<images/Screenshot 2023-09-28 at 13.41.09 - Layer_3_-_Network_-_PART2__learn.cantrill.io_and_1.png>)
OSI Layer 3 - IPv4 Addressing

![Alt text](<images/Screenshot 2023-09-28 at 13.44.55 - Layer_3_-_Network_-_PART2__learn.cantrill.io_and_1.png>)
OSI Layer 3 - Subnet Mask

> [!NOTE] IPv4 classful addressing
>
> Class A, class B, class C
>
> Ref: <https://www.wikiwand.com/en/Classful_network>

> [!NOTE] IPv4 reserved IP address
>
> - Class A
>
>   - 0.0.0.0/8: Local network
>   - 10.0.0.0/8: Private network
>   - 127.0.0.0./8: Loopback of local host
>
> - Class B
>
>   - 169.254.0.0/16: Link-local address when no IP address is specified
>
>     - 169.254.169.254/32: AWS EC2 Instance Metadata Service
>
>   - 172.16.0.0/12: Private network
>
>     - 127.31.0.0/16: AWS default VPC size
>
> - Class C
>   - 192.168.0.0/16: Private network
>
> Ref:
>
> - <https://www.wikiwand.com/en/Reserved_IP_addresses>
> - <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-instance-addressing.html#link-local-addresses>

![Alt text](<images/Screenshot 2023-09-28 at 13.47.17 - Layer_3_-_Network_-_PART2__learn.cantrill.io_and_1.png>)
OSI Layer 3 - Route Tables & Routes

![Alt text](<images/Screenshot 2023-09-28 at 13.48.20 - Layer_3_-_Network_-_PART2__learn.cantrill.io_and_1.png>)
OSI Layer 3 - **Router** compares packet **destination IP** & **route table** for matching destinations and is forwarded on to the Next Hop/Target. The more specific prefixes are preferred (0 lowest. 32 highest)

![Alt text](<images/Screenshot 2023-09-28 at 13.49.57 - Layer_3_-_Network_-_PART2__learn.cantrill.io_and_1.png>)
OSI Layer 3 - Packets are routed, **hop by hop** across the internet. From _source_ to _destination_.

### Layer 3 - Network - PART3 (15:15)

![Alt text](<images/Screenshot 2023-09-28 at 14.04.53 - Layer_3_-_Network_-_PART3__learn.cantrill.io_and_1.png>)
OSI Layer 3 - Address Resolution Protocol (ARP)

![Alt text](<images/Screenshot 2023-09-28 at 14.06.44 - Layer_3_-_Network_-_PART3__learn.cantrill.io_and_1.png>)
OSI Layer 3 - IP Routing - Same local network

![Alt text](<images/Screenshot 2023-09-28 at 14.09.27 - Layer_3_-_Network_-_PART3__learn.cantrill.io_and_1.png>)
OSI Layer 3 - IP Routing - 2 different networks

![Alt text](<images/Screenshot 2023-09-28 at 14.11.29 - Layer_3_-_Network_-_PART3__learn.cantrill.io_and_1.png>)
OSI Layer 3 - L3 Summary

### Layer 4&5 - Transport & Session - PART1 (15:39)

![Alt text](<images/Screenshot 2023-09-28 at 14.25.22 - Layer_4&5_-_Transport_&_Session_-_PART1__learn.can.png>)
L3 problems

![Alt text](<images/Screenshot 2023-09-28 at 14.27.29 - Layer_4&5_-_Transport_&_Session_-_PART1__learn.can.png>)
TCP & UDP

![Alt text](<images/Screenshot 2023-09-28 at 14.28.45 - Layer_4&5_-_Transport_&_Session_-_PART1__learn.can.png>)
TCP Segments

![Alt text](<images/Screenshot 2023-09-28 at 14.32.22 - Layer_4&5_-_Transport_&_Session_-_PART1__learn.can.png>)
TCP Header

### Layer 4&5 - Transport & Session - PART2 (13:54)

![Alt text](<images/Screenshot 2023-09-28 at 14.56.16 - Layer_4&5_-_Transport_&_Session_-_PART2__learn.can.png>)
Transmission Control Protocol (TCP) is a **connection** based protocol.

![Alt text](<images/Screenshot 2023-09-28 at 14.56.49 - Layer_4&5_-_Transport_&_Session_-_PART2__learn.can.png>)
TCP Flags 🏴🏳️

![Alt text](<images/Screenshot 2023-09-28 at 15.09.17 - Layer_4&5_-_Transport_&_Session_-_PART2__learn.can.png>)
TCP Connection 3-way Handshake 🤝

![Alt text](<images/Screenshot 2023-09-28 at 15.12.27 - Layer_4&5_-_Transport_&_Session_-_PART2__learn.can.png>)
Stateless firewall

![Alt text](<images/Screenshot 2023-09-28 at 15.12.54 - Layer_4&5_-_Transport_&_Session_-_PART2__learn.can.png>)
Stateful firewall

## Other Networking (MORE COMING SOON)

### Network Address Translation (NAT) - PART1 (11:00)

![Alt text](<images/Screenshot 2023-09-28 at 15.23.51 - Network_Address_Translation_(NAT)_-_PART1__learn.c.png>)
NAT - Types of NATs

> [!NOTE] Why NAT?
>
> - Overcome IPv4 shortages.
> - Security: hide private IP

![Alt text](<images/Screenshot 2023-09-28 at 15.26.46 - Network_Address_Translation_(NAT)_-_PART1__learn.c.png>)
Static NAT - Outbound Traffic

> [!NOTE] Static NAT maintains a NAT table to map PrivateIP : Public IP (1:1)>
>
> 👉️ In AWS, Internet Gateway (IGW) is a static NAT.

![Alt text](<images/Screenshot 2023-09-28 at 15.27.48 - Network_Address_Translation_(NAT)_-_PART1__learn.c.png>)
Static NAT - Inbound Traffic👉️

### Network Address Translation (NAT) - PART2 (9:38)

![Alt text](<images/Screenshot 2023-09-28 at 15.36.00 - Network_Address_Translation_(NAT)_-_PART2__learn.c.png>)
Dynamic NAT

> [!NOTE] Dynamic NAT maintains a NAT table:
>
> - Dynamic NAT maps PrivateIP : Public IP (1:1 first available).
> - Public IP allocations are _temporary allocations from a Public IP Pool_, the pool may be out-of-public IPs.

![Alt text](<images/Screenshot 2023-09-28 at 15.40.07 - Network_Address_Translation_(NAT)_-_PART2__learn.c.png>)
Port Address Translating (PAT)

> [!NOTE] PAT records the Source (Private) IP and Source Port:
>
> - PAT replaces the source IP with the single Public IP and a public source port
> - The Public IP and public source port are allocated from a pool which allows IP Overloading (many to one)

> [!NOTE] In AWS, NAT Gateway (NATGW) is a PAT.

> [!NOTE] NAT vs PAT
>
> - NAT
>   ![Alt text](images/NAT.png)
> - PAT: is a type of Dynamic NAT
>   ![Alt text](images/NAT-PAT.png)
>
> Ref: <https://techdifferences.com/difference-between-nat-and-pat.html>

### IP Address Space & Subnetting - PART1 (14:37)

![Alt text](<images/Screenshot 2023-09-28 at 15.54.28 - IP_Address_Space_&_Subnetting_-_PART1__learn.cantr.png>)
IPv4 Addressing

![Alt text](<images/Screenshot 2023-09-28 at 15.57.30 - IP_Address_Space_&_Subnetting_-_PART1__learn.cantr.png>)
IPv4 Address Space

### IP Address Space & Subnetting - PART2 (10:32)

![Alt text](<images/Screenshot 2023-09-28 at 16.22.13 - IP_Address_Space_&_Subnetting_-_PART1__learn.cantr.png>)
IPv4 - Private Ranges

![Alt text](<images/Screenshot 2023-09-28 at 16.24.51 - IP_Address_Space_&_Subnetting_-_PART1__learn.cantr.png>)
IPv4 vs IPv6 Address Space

> [!NOTE] Classless Inter-Domain Routing (CIDR)
>
> A method for allocating IP addresses and for IP routing.
>
> CIDR is introduced in 1993 to replace the previous classful network addressing architecture
>
> See [Classless Inter-Domain Routing (CIDR) | Wikipedia](https://www.wikiwand.com/en/Classless_Inter-Domain_Routing)

> [!NOTE] Subnetting
>
> The process of spitting a larger network into more smaller subnets

![Alt text](<images/Screenshot 2023-09-28 at 19.10.53 - IP_Address_Space_&_Subnetting_-_PART2__learn.cantr.png>)
Subnetting and CIDR

![Alt text](<images/Screenshot 2023-09-28 at 19.16.01 - IP_Address_Space_&_Subnetting_-_PART2__learn.cantr.png>)
Subnetting - Start and end calculation

### Distributed Denial of Service (DDOS) Attacks (14:35)

![Alt text](<images/Screenshot 2023-09-28 at 19.45.04 - Distributed_Denial_of_Service_(DDOS)_Attacks__lear.png>)
DDOS - Overview

> [!NOTE] DDOS types:
>
> - Layer 7:
>   - HTTP Flood
>   - DNS Fllod
> - Layer 4:
>   - (TCP) SYN Flood

![Alt text](<images/Screenshot 2023-09-28 at 19.46.14 - Distributed_Denial_of_Service_(DDOS)_Attacks__lear.png>)
Without DDOS - Normal App

![Alt text](<images/Screenshot 2023-09-28 at 19.47.33 - Distributed_Denial_of_Service_(DDOS)_Attacks__lear.png>)
DDOS - Application Layer Attack (HTTP Flood)

![Alt text](<images/Screenshot 2023-09-28 at 19.49.21 - Distributed_Denial_of_Service_(DDOS)_Attacks__lear.png>)
DDOS - Protocol Attack (SYN Flood)

![Alt text](<images/Screenshot 2023-09-28 at 19.54.21 - Distributed_Denial_of_Service_(DDOS)_Attacks__lear.png>)
DDOS - Volumetric / Amplification Attack

> [!NOTE] What is a DDOS attack?
>
> <https://www.cloudflare.com/learning/ddos/what-is-a-ddos-attack/>

### VLANs, TRUNKS & QinQ (16:14)

![Alt text](<images/Screenshot 2023-09-28 at 20.04.40 - VLANs,_TRUNKS_&_QinQ__learn.cantrill.io_and_1_more.png>)
Physical Segment - 1 Switch

![Alt text](<images/Screenshot 2023-09-28 at 20.05.23 - VLANs,_TRUNKS_&_QinQ__learn.cantrill.io_and_1_more.png>)
Physical Segment - Multi Switches

![Alt text](<images/Screenshot 2023-09-28 at 20.05.44 - VLANs,_TRUNKS_&_QinQ__learn.cantrill.io_and_1_more.png>)
Physical Segment - Connecting Switches

> [!NOTE] What is VLAN?
>
> A way to divide a single physical network into multiple logical networks.

![Alt text](<images/Screenshot 2023-09-28 at 20.06.53 - VLANs,_TRUNKS_&_QinQ__learn.cantrill.io_and_1_more.png>)
Frame Tagging - 802.1Q

> [!NOTE] What does 802.1Q do?
>
> 802.1Q allows multiple "VIRTUAL LANS (VLANS)" to operate over the same L2 physical network.
>
> Each has a separate broadcast domain and is isolated from all others

![Alt text](<images/Screenshot 2023-09-28 at 20.08.44 - VLANs,_TRUNKS_&_QinQ__learn.cantrill.io_and_1_more.png>)
OSI Layer 2 - Frame Tagging - 802.1AD - QinQ

> [!NOTE] What does 802.1AD do?
>
> 802.1AD (QinQ) allows ISPs or carriers to use VLANS across their network, while carrying customer traffic which might also be using multiple VLANs

> [!NOTE] How does 802.1AD (QinQ) work?
>
> It allows multiple VLAN tags to be added to a single Ethernet frame.

![Alt text](<images/Screenshot 2023-09-28 at 20.12.21 - VLANs,_TRUNKS_&_QinQ__learn.cantrill.io_and_1_more.png>)
VLAN - Trunk Port vs Access Port

> [!NOTE] What are trunk port?
>
> Trunk ports are a way to carry VLAN traffic between network switches

![Alt text](<images/Screenshot 2023-09-28 at 20.13.27 - VLANs,_TRUNKS_&_QinQ__learn.cantrill.io_and_1_more.png>)
Devices on different VLANs cannot communicate without a Layer 3 Device (Router)

![Alt text](<images/Screenshot 2023-09-28 at 20.14.33 - VLANs,_TRUNKS_&_QinQ__learn.cantrill.io_and_1_more.png>)
VLAN - Summary

### Decimal to Binary Conversion (IP Addressing) (17:12)

![Alt text](<images/Screenshot 2023-09-29 at 11.07.49 - Decimal_to_Binary_Conversion_(IP_Addressing)__lear.png>)

![Alt text](<images/Screenshot 2023-09-29 at 11.11.21 - Decimal_to_Binary_Conversion_(IP_Addressing)__lear.png>)

![Alt text](<images/Screenshot 2023-09-29 at 11.14.09 - Decimal_to_Binary_Conversion_(IP_Addressing)__lear.png>)

### SSL & TLS (11:19)

![Alt text](<images/Screenshot 2023-09-29 at 11.19.32 - SSL_&_TLS__learn.cantrill.io_and_1_more_page_-_Per.png>)

![Alt text](<images/Screenshot 2023-09-29 at 11.28.51 - SSL_&_TLS__learn.cantrill.io_and_1_more_page_-_Per.png>)

See [The First Few Milliseconds of an HTTPS Connection](http://www.moserware.com/2009/06/first-few-milliseconds-of-https.html)

### Border Gateway Protocol (BGP) 101 (17:03)

![Alt text](<images/Screenshot 2023-09-29 at 11.35.43 - Border_Gateway_Protocol_(BGP)_101__learn.cantrill..png>)
BGP: Exchange the **best path** (ASPATH) to a destination

![Alt text](<images/Screenshot 2023-09-29 at 11.46.22 - Border_Gateway_Protocol_(BGP)_101__learn.cantrill..png>)
BGP: AS will advertise all the shortest paths its known to all its peers (and prepends its own ASN onto the path)

> [!NOTE] ASPATH Prepending: make a path longer

### Stateful vs Stateless Firewalls (14:04)

![Alt text](<images/Screenshot 2023-09-29 at 12.03.58 - Stateful_vs_Stateless_Firewalls__learn.cantrill.io.png>)
Connection's Inbound and Outbound

> [!NOTE] Connection and port
> A _connection_ has 2 parts:
>
> - _Request_: From an ephemeral port - chosen by the client - (to a well-known port)
> - _Response_: From the well-known port (to that ephemeral port)

![Alt text](<images/Screenshot 2023-09-29 at 12.08.00 - Stateful_vs_Stateless_Firewalls__learn.cantrill.io.png>)
Inbound and Outbound are depend on perspective

![Alt text](<images/Screenshot 2023-09-29 at 12.10.09 - Stateful_vs_Stateless_Firewalls__learn.cantrill.io.png>)
Stateless Firewall

> [!NOTE] Stateless Firewall
> A Stateless Firewall
>
> - examines each individual network packet in isolation
> - makes decisions
>   - based on predetermined rules
>   - without any awareness of the state of the network connection

> [!TIP] Stateless Firewall and Server
> When using stateless firewall with a server, you need to:
>
> - Allow inbound traffic to well-known port, e.g. `443`
> - Allow outbound traffic to all ephemeral ports, e.g. `1024`, `65535` (randomly chosen by the client)
>
> e.g. AWS Network ACL

![Alt text](<images/Screenshot 2023-09-29 at 12.12.06 - Stateful_vs_Stateless_Firewalls__learn.cantrill.io.png>)
Stateful Firewall

> [!NOTE] Stateful Firewall
> A stateful firewall
>
> - tracks the state of the network connections:
>   - knows a response corresponding to which request
> - make decisions based on these knowledge:
>   - do some of the works for you
>
> 👉 If
>
> - the request (no matter whether it's inbound or outbound traffic) is allowed
> - the response will be automatically allowed too
>
> e.g. AWS security group

> [!TIP]
> Usually:
>
> - A stateful firewall is called "firewall".
> - A stateless firewall is called ACL.
>
> When something is called firewall, it usually means it's a stateful firewall.

### JumboFrames (4:35)

![Alt text](<images/Screenshot 2023-09-29 at 12.19.38 - JumboFrames__learn.cantrill.io_and_1_more_page_-_P.png>)
JumboFrame vs normal frame (OSI Layer 2)

> [!NOTE] Maximum Transmission Unit (MTU)
>
> - Traditional Ethernet frames have a MTU of 1500 bytes.
> - Jumbo Frames can allow for frames up to 9000 bytes.

> [!TIP] Why use Jumbo Frames
>
> - Reduce frame overhead
> - Reduce wasted time on medium (between frames)

![Alt text](<images/Screenshot 2023-09-29 at 12.20.18 - JumboFrames__learn.cantrill.io_and_1_more_page_-_P.png>)
Not everything in AWS supports JumboFrames

> [!TIP] In AWS, which traffic supports jumbo frames?
>
> - VPC Peering in same region
> - Direct Connect
> - TGW (up to 8500 bytes)

### Layer 7 Firewalls (7:44)

![Alt text](<images/Screenshot 2023-09-29 at 12.37.25 - Layer_7_Firewalls__learn.cantrill.io_and_3_more_pa.png>)
Traditional firewalls, such as packet filtering or stateful inspection firewalls, operate at the network and transport layers and are only capable of filtering traffic based on IP addresses, port numbers, and protocol types.

![Alt text](<images/Screenshot 2023-09-29 at 12.42.16 - Layer_7_Firewalls__learn.cantrill.io_and_3_more_pa.png>)
In contrast, layer 7 firewalls have the ability to analyze the content of network traffic, including application protocols such as HTTP, FTP, and SMTP, and can make more granular decisions about which traffic should be allowed or blocked.

> [!NOTE] Layer 7 Firewall
>
> | Feature                      | Traditional Firewalls (Packet Filtering/Stateful Inspection) | Layer 7 Firewalls (Application Firewalls)                     |
> | ---------------------------- | ------------------------------------------------------------ | ------------------------------------------------------------- |
> | **Layer of Operation**       | Network and Transport Layers (Layer 3 & 4)                   | Application Layer (Layer 7)                                   |
> | **Filtering Criteria**       | IP addresses, Port numbers, Protocol types                   | Application data, HTTP/FTP/SMTP, user inputs                  |
> | **Traffic Inspection**       | Basic packet-level inspection                                | Deep packet inspection of application data                    |
> | **Granularity**              | Coarse-grained (limited to IP, port, protocol)               | Fine-grained (based on application content)                   |
> | **Protection against**       | Basic network attacks (IP spoofing, SYN floods)              | Advanced threats (SQL injection, XSS, malware)                |
> | **Policy Control**           | Limited to low-level network policies                        | Application-specific policies (e.g., block specific URLs)     |
> | **Performance**              | Higher throughput due to simpler inspection                  | Potentially slower due to deep inspection                     |
> | **Complexity**               | Simpler to configure and manage                              | More complex, requires detailed understanding of applications |
> | **Use Case**                 | Basic security for network and transport layers              | Protection of web and application services                    |
> | **Examples of Applications** | Firewall rules based on IP, Port, and Protocol               | Web Application Firewall (WAF), API Gateways                  |

See [Nord Security - Learning Center](https://nordlayer.com/learn/)

### IP Sec VPN Fundamentals (14:48)

![Alt text](<images/Screenshot 2023-09-29 at 12.55.13 - IP_Sec_VPN_Fundamentals__learn.cantrill.io_and_3_m.png>)
IPSec

> [!NOTE] What does IP Sec do?
>
> IP Sec sets up secure tunnel across insecure networks.

![Alt text](<images/Screenshot 2023-09-29 at 12.55.59 - IP_Sec_VPN_Fundamentals__learn.cantrill.io_and_3_m.png>)
IP Sec Tunnel

![Alt text](<images/Screenshot 2023-09-29 at 12.57.34 - IP_Sec_VPN_Fundamentals__learn.cantrill.io_and_3_m.png>)
Asymmetric/Symmetric Encryption

![Alt text](<images/Screenshot 2023-09-29 at 12.59.00 - IP_Sec_VPN_Fundamentals__learn.cantrill.io_and_3_m.png>)
IP Sec's 2 main phases

![Alt text](<images/Screenshot 2023-09-29 at 13.02.39 - IP_Sec_VPN_Fundamentals__learn.cantrill.io_and_3_m.png>)
IP Sec - IKE Phase 1

![Alt text](<images/Screenshot 2023-09-29 at 13.04.59 - IP_Sec_VPN_Fundamentals__learn.cantrill.io_and_3_m.png>)
IP Sec - IKE Phase 2

![Alt text](<images/Screenshot 2023-09-29 at 13.05.46 - IP_Sec_VPN_Fundamentals__learn.cantrill.io_and_3_m.png>)
Route-based VPN / Policy-based VPN

![Alt text](<images/Screenshot 2023-09-29 at 13.06.46 - IP_Sec_VPN_Fundamentals__learn.cantrill.io_and_3_m.png>)
Route-based VPN / Policy-based VPN examples

### Fibre Optic Cable 101 (11:21)

![Alt text](<images/Screenshot 2023-09-29 at 13.19.26 - Fibre_Optic_Cable_101__learn.cantrill.io_and_1_mor.png>)
Fibre Optic Cables

![Alt text](<images/Screenshot 2023-09-29 at 13.20.26 - Fibre_Optic_Cable_101__learn.cantrill.io_and_1_mor.png>)
Fibre Optic Cables - Connectors

![Alt text](<images/Screenshot 2023-09-29 at 13.21.53 - Fibre_Optic_Cable_101__learn.cantrill.io_and_1_mor.png>)
Fibre Optic Cables - Core

![Alt text](<images/Screenshot 2023-09-29 at 13.22.26 - Fibre_Optic_Cable_101__learn.cantrill.io_and_1_mor.png>)
Fibre Optic Cables - Cladding

![Alt text](<images/Screenshot 2023-09-29 at 13.22.34 - Fibre_Optic_Cable_101__learn.cantrill.io_and_1_mor.png>)
Fibre Optic Cables - Buffer

![Alt text](<images/Screenshot 2023-09-29 at 13.22.51 - Fibre_Optic_Cable_101__learn.cantrill.io_and_1_mor.png>)
Fibre Optic Cables - Jacket

![Alt text](<images/Screenshot 2023-09-29 at 13.40.27 - Fibre_Optic_Cable_101__learn.cantrill.io_and_1_mor.png>)
Fibre Optic Cables - Single Mode

![Alt text](<images/Screenshot 2023-09-29 at 13.40.38 - Fibre_Optic_Cable_101__learn.cantrill.io_and_1_mor.png>)
Fibre Optic Cables - Multi Mode

![Alt text](<images/Screenshot 2023-09-29 at 13.40.50 - Fibre_Optic_Cable_101__learn.cantrill.io_and_1_mor.png>)
Fibre Optic Transceivers

## Security (MORE COMING SOON)

### Encryption 101 - PART1 (13:56)

![Alt text](<images/Screenshot 2023-09-29 at 13.49.45 - Encryption_101_-_PART1__learn.cantrill.io_and_1_mo.png>)
Encryption 101

![Alt text](<images/Screenshot 2023-09-29 at 13.51.01 - Encryption_101_-_PART1__learn.cantrill.io_and_1_mo.png>)
Encryption at Rest

![Alt text](<images/Screenshot 2023-09-29 at 13.51.41 - Encryption_101_-_PART1__learn.cantrill.io_and_1_mo.png>)
Encryption in Transit

![Alt text](<images/Screenshot 2023-09-29 at 13.53.03 - Encryption_101_-_PART1__learn.cantrill.io_and_1_mo.png>)
Encryption Concepts: Plaintext, Algorithm, Key and Ciphertext

![Alt text](<images/Screenshot 2023-09-29 at 13.56.49 - Encryption_101_-_PART1__learn.cantrill.io_and_1_mo.png>)
Symmetric Encryption

![Alt text](<images/Screenshot 2023-09-29 at 13.57.07 - Encryption_101_-_PART1__learn.cantrill.io_and_1_mo.png>)
Symmetric Encryption - The same key is used for decryption

![Alt text](<images/Screenshot 2023-09-29 at 13.57.47 - Encryption_101_-_PART1__learn.cantrill.io_and_1_mo.png>)
Asymmetric Encryption - Public and Private Key

![Alt text](<images/Screenshot 2023-09-29 at 13.58.56 - Encryption_101_-_PART1__learn.cantrill.io_and_1_mo.png>)
Asymmetric Encryption - Key Exchange

![Alt text](<images/Screenshot 2023-09-29 at 13.59.10 - Encryption_101_-_PART1__learn.cantrill.io_and_1_mo.png>)
Asymmetric Encryption - Encryption

![Alt text](<images/Screenshot 2023-09-29 at 13.59.26 - Encryption_101_-_PART1__learn.cantrill.io_and_1_mo.png>)
Asymmetric Encryption - Decryption

### Encryption 101 - PART2 (6:42)

![Alt text](<images/Screenshot 2023-09-29 at 14.12.44 - Encryption_101_-_PART2__learn.cantrill.io_and_1_mo-1.png>)
![Alt text](<images/Screenshot 2023-09-29 at 14.13.18 - Encryption_101_-_PART2__learn.cantrill.io_and_1_mo.png>)
Signing

> [!NOTE] Signing
>
> The practice of using asymmetric keys to verify the authenticity and integrity of data.

![Alt text](<images/Screenshot 2023-09-29 at 14.17.37 - Encryption_101_-_PART2__learn.cantrill.io_and_1_mo.png>)
![Alt text](<images/Screenshot 2023-09-29 at 14.17.11 - Encryption_101_-_PART2__learn.cantrill.io_and_1_mo.png>)
Steganography

> [!NOTE] Steganography
>
> The practice of concealing information within another message or physical object to avoid detection.

### Envelope Encryption (8:06)

![Alt text](<images/Screenshot 2023-09-29 at 14.28.17 - Envelope_Encryption__learn.cantrill.io_and_1_more_.png>)
Enveloper Encryption: KEK, DEKs

![Alt text](<images/Screenshot 2023-09-29 at 14.30.34 - Envelope_Encryption__learn.cantrill.io_and_1_more_.png>)
Enveloper Encryption - Decryption

![Alt text](<images/Screenshot 2023-09-29 at 14.33.12 - Envelope_Encryption__learn.cantrill.io_and_1_more_.png>)
Enveloper Encryption - Considerations

### Hardware Security Modules (HSMs) (6:40)

![Alt text](<images/Screenshot 2023-09-29 at 14.42.45 - Hardware_Security_Modules_(HSMs)__learn.cantrill.i.png>)
HSM - Without HSM

![Alt text](<images/Screenshot 2023-09-29 at 14.43.34 - Hardware_Security_Modules_(HSMs)__learn.cantrill.i.png>)
HSM - With HSM

![Alt text](<images/Screenshot 2023-09-29 at 14.45.42 - Hardware_Security_Modules_(HSMs)__learn.cantrill.i.png>)
HSM - Keys are stored securely inside the HSM

![Alt text](<images/Screenshot 2023-09-29 at 14.46.50 - Hardware_Security_Modules_(HSMs)__learn.cantrill.i.png>)
HSM - Authenticate takes place inside the HSM

![Alt text](<images/Screenshot 2023-09-29 at 14.46.54 - Hardware_Security_Modules_(HSMs)__learn.cantrill.i.png>)
HSM - HSMs are tamper proof & hardened against physical logical attacks

![Alt text](<images/Screenshot 2023-09-29 at 14.47.26 - Hardware_Security_Modules_(HSMs)__learn.cantrill.i.png>)
HSM - Accessed via tightly controlled, industry standard APIs

![Alt text](<images/Screenshot 2023-09-29 at 14.47.35 - Hardware_Security_Modules_(HSMs)__learn.cantrill.i.png>)
HSM - Role Separation: HSM admins can update & maintain but don't always have full access

![Alt text](<images/Screenshot 2023-09-29 at 14.48.16 - Hardware_Security_Modules_(HSMs)__learn.cantrill.i.png>)
HSM - HSM can be used to processing SSL/TLS or PKI Signing certificate

### Hash Functions & Hashing (13:19)

![Alt text](<images/Screenshot 2023-09-29 at 14.57.15 - Hash_Functions_&_Hashing__learn.cantrill.io_and_1_.png>)
Hashing

> [!NOTE] Hashing
>
> The process of applying a hash function to data to produce a unique and irreversible representation of the original data.

![Alt text](<images/Screenshot 2023-09-29 at 14.58.21 - Hash_Functions_&_Hashing__learn.cantrill.io_and_1_.png>)
Hash Function

> [!NOTE] Hash Function
>
> Mathematical algorithms that transform input data into a fixed-length string of characters, called a hash or message digest.

![Alt text](<images/Screenshot 2023-09-29 at 14.59.02 - Hash_Functions_&_Hashing__learn.cantrill.io_and_1_.png>)
Hashing is 1 way.

![Alt text](<images/Screenshot 2023-09-29 at 14.59.59 - Hash_Functions_&_Hashing__learn.cantrill.io_and_1_.png>)
Hashing Example - Raw Password

![Alt text](<images/Screenshot 2023-09-29 at 15.00.41 - Hash_Functions_&_Hashing__learn.cantrill.io_and_1_.png>)
Hashing Example - Hashed Password

![Alt text](<images/Screenshot 2023-09-29 at 15.07.44 - Hash_Functions_&_Hashing__learn.cantrill.io_and_1_.png>)
Hashing Collision

![Alt text](<images/Screenshot 2023-09-29 at 15.11.11 - Hash_Functions_&_Hashing__learn.cantrill.io_and_1_.png>)
Hashing Summary

### Digital Signatures (9:26)

![Alt text](<images/Screenshot 2023-09-29 at 15.19.21 - Digital_Signatures__learn.cantrill.io_and_1_more_p.png>)
Public Key Cryptography

![Alt text](<images/Screenshot 2023-09-29 at 15.21.51 - Digital_Signatures__learn.cantrill.io_and_1_more_p.png>)
Digital Signatures verifies:

- Integrity (WHAT is sent) 👈 by compare the hash of data
- Authenticity (WHO sent it) 👈 by using the public key to very the signature

![Alt text](<images/Screenshot 2023-09-29 at 15.24.38 - Digital_Signatures__learn.cantrill.io_and_1_more_p.png>)

## DNS & DNSSEC

### DNS #1 - What does DNS do (2:56)

![Alt text](<images/Screenshot 2023-09-29 at 15.36.20 - DNS_1_-_What_does_DNS_do__learn.cantrill.io_-_Per.png>)
DNS translates human readable domain names (e.g. www.amazon.com) to machine readable IP addresses (e.g. 192.0.2.44)

### DNS #2 - Why does DNS need a complex architecture (13:19)

![Alt text](<images/Screenshot 2023-09-29 at 15.38.44 - DNS_2_-_Why_does_DNS_need_a_complex_architecture_.png>)
Why not ONE server?

![Alt text](<images/Screenshot 2023-09-29 at 15.42.51 - DNS_2_-_Why_does_DNS_need_a_complex_architecture_.png>)
DNS Terms

![Alt text](<images/Screenshot 2023-09-29 at 15.52.26 - DNS_2_-_Why_does_DNS_need_a_complex_architecture_.png>)
DNS Hierarchical Design

### DNS #3 - How DNS actually works ... walking the tree (8:46)

![Alt text](<images/Screenshot 2023-09-29 at 15.59.59 - DNS_3_-_How_DNS_actually_works_..._walking_the_tr.png>)
The job of DNS is help us get the DNS records we need.

![Alt text](<images/Screenshot 2023-09-29 at 16.03.54 - DNS_3_-_How_DNS_actually_works_..._walking_the_tr.png>)
DNS - Walking the tree

![Alt text](<images/Screenshot 2023-09-29 at 16.04.39 - DNS_3_-_How_DNS_actually_works_..._walking_the_tr.png>)
DNS - Walking the tree - Behind the scene

### DNS #4 - What happens when a domain is registered? (4:27)

![Alt text](<images/Screenshot 2023-09-29 at 16.12.24 - DNS_4_-_What_happens_when_a_domain_is_registered_.png>)
Domain Registrar - DNS Hosting Provider - TLD Registry

![Alt text](<images/Screenshot 2023-09-29 at 16.13.29 - DNS_4_-_What_happens_when_a_domain_is_registered_.png>)
Registering a domain

### DNSSEC #1 - Why do we need DNSSEC (11:08)

![Alt text](<images/Screenshot 2023-09-29 at 16.30.21 - DNSSEC_1_-_Why_do_we_need_DNSSEC__learn.cantrill..png>)
DNSSEC Benefits ~ Digital Signature for DNS Records

![Alt text](<images/Screenshot 2023-09-29 at 16.31.48 - DNSSEC_1_-_Why_do_we_need_DNSSEC__learn.cantrill..png>)
DNSSEC is an extension to DNS. It adds, and doesn't replace DNS.

![Alt text](<images/Screenshot 2023-09-29 at 16.32.27 - DNSSEC_1_-_Why_do_we_need_DNSSEC__learn.cantrill..png>)
DNSSEC Benefit Example

![Alt text](<images/Screenshot 2023-09-29 at 16.33.33 - DNSSEC_1_-_Why_do_we_need_DNSSEC__learn.cantrill..png>)
DNS Disrupted

![alt text](<images/Screenshot From 2024-10-15 16-41-13.png>)
Example: Use dig to query A record for example.com

![alt text](<images/Screenshot From 2024-10-15 17-40-25.png>)
Example: Use dig to query A record and DNSSEC for example.com

> [!NOTE]
> To verify DNSSEC of a domain, you can use:
>
> - dig: if there's the flag `ad`
> - delv
> - Web Tools: DNS Viz, DNSSEC Debugger

See

- [Troubleshoot DNSSEC | CloudFlare Docs](https://developers.cloudflare.com/dns/dnssec/troubleshooting/):
- [How to test and validate DNSSEC using dig command line](https://www.cyberciti.biz/faq/unix-linux-test-and-validate-dnssec-using-dig-command-line)

### DNSSEC #2 - How DNSSEC Works within a Zone (17:34)

![Alt text](<images/Screenshot 2023-09-29 at 18.04.45 - DNSSEC_2_-_How_DNSSEC_Works_within_a_Zone__learn..png>)
DNSSEC - RRSET

> [!NOTE] What is a RRSET?
>
> A group of all the records with the same type ad same name

![Alt text](<images/Screenshot 2023-09-29 at 18.08.12 - DNSSEC_2_-_How_DNSSEC_Works_within_a_Zone__learn..png>)
DNSSEC - RRSIG & Zone Signing Key (ZSK)

> [!NOTE] What is a RRSIG?
>
> A digital signature for a RRSET, signed by the private Zone Signing Key (ZSK).

> [!NOTE] What is Zone Signing Key (ZSK)?
>
> Each zone has a ZSK, which is used to:
>
> - sign 👈 the _private ZSK_
> - verify 👈 the _public ZSK_
>
> the RRSETs.

![Alt text](<images/Screenshot 2023-09-29 at 18.11.03 - DNSSEC_2_-_How_DNSSEC_Works_within_a_Zone__learn..png>)
DNSSEC - DNSKEY contains public ZSK to verify all RRSIGs in the zone

> [!NOTE] Why the DNSKEY also has an RRSIG?
>
> Because someone can fake the DNSKEY too. 🤯

![Alt text](<images/Screenshot 2023-09-29 at 18.13.51 - DNSSEC_2_-_How_DNSSEC_Works_within_a_Zone__learn..png>)
DNSSEC - 2 Keys - Key Signing Key

> [!NOTE] What is a KSK?
>
> KSK is used to sign and verify the ZSK

> [!NOTE] Why do we use separate zone-signing keys and key-signing keys?
>
> The KSK is linked to the parent zone.
>
> If we use a single key, changes to the ZSK would requires parent zone changes. 🐌🆘
>
> By using 2 keys, we can change the ZSK as quired, without impacting parent zone. 🤳

![Alt text](<images/Screenshot 2023-09-29 at 18.16.01 - DNSSEC_2_-_How_DNSSEC_Works_within_a_Zone__learn..png>)
DNSSEC - Summary

### DNSSEC #3 - DNSSEC Chain of Trust (8:16)

![Alt text](<images/Screenshot 2023-09-30 at 14.48.29 - DNSSEC_3_-_DNSSEC_Chain_of_Trust__learn.cantrill..png>)
DNSSEC - DS Record

> [!NOTE] What is DS Record?
>
> DS (Delegation Signer) Record, on a parent zone, contains a hash of the KSK in a child zone.

![Alt text](<images/Screenshot 2023-09-30 at 14.50.57 - DNSSEC_3_-_DNSSEC_Chain_of_Trust__learn.cantrill..png>)
DNSSEC - Validation Flow

### DNSSEC #4 - DNSSEC Root Signing Ceremony (7:53)

![Alt text](<images/Screenshot 2023-09-30 at 16.40.55 - DNSSEC_4_-_DNSSEC_Root_Signing_Ceremony__learn.ca.png>)
DNSSEC - Root KSK Private

![Alt text](<images/Screenshot 2023-09-30 at 16.42.20 - DNSSEC_4_-_DNSSEC_Root_Signing_Ceremony__learn.ca.png>)
DNSSEC - Root KSK Public

![Alt text](<images/Screenshot 2023-09-30 at 16.42.20 - DNSSEC_4_-_DNSSEC_Root_Signing_Ceremony__learn.ca.png>)
DNSSEC - The TRUST Anchor (Root KSK)

![Alt text](<images/Screenshot 2023-09-30 at 19.53.30 - DNSSEC_4_-_DNSSEC_Root_Signing_Ceremony__learn.ca.png>)
DNSSEC - The Signing Ceremony

![Alt text](<images/Screenshot 2023-09-30 at 19.54.30 - DNSSEC_4_-_DNSSEC_Root_Signing_Ceremony__learn.ca.png>)
DNSSEC - Key Ceremony

See [The Key to the Internet and Key Ceremonies: An Explainer | ICANN](https://www.icann.org/en/blogs/details/the-key-to-the-internet-and-key-ceremonies-an-explainer-11-07-2023-en)

## Containers & Virtualization (MORE COMING SOON)

### Kubernetes 101 (11:27)

![Alt text](<images/Screenshot 2023-09-30 at 20.01.29 - Kubernetes_101__learn.cantrill.io_-_Personal_-_Mic.png>)
K8s - Cluster Structure

> [!NOTE] What is the basic structure of a K8s cluster?
>
> A K8s cluster contains:
>
> - Control Plane
> - Worker Nodes

> [!NOTE] What is the Control Plane in K8s?
>
> The control plane manages the overall state of the cluster

> [!NOTE] What is a Worker Node in K8s?
> A worker node is the machine that actually run the containers

> [!NOTE] What are the core components of a worker node?
>
> - `kubelet`
>
>   - Ensures that Pods are running, including their containers.
>
> - **Container runtime**
>
>   - Software responsible for running containers.
>
> - `kube-proxy` (optional)
>
>   - Maintains network rules on nodes to implement Services.

> [!NOTE] What is the core component of control plane?
>
> The core of Kubernetes' control plane is
>
> - the API server
> - the HTTP API that it exposes, which is known as the Kubernetes API.

> [!NOTE] What does the Kubernetes API do?
> The Kubernetes API
>
> - lets end users, different parts of your cluster, and external components communicate with one another.
> - let you query and manipulate the state of API objects in Kubernetes (for example: Pods, Namespaces, ConfigMaps, and Events).

![Alt text](<images/Screenshot 2023-09-30 at 20.06.24 - Kubernetes_101__learn.cantrill.io_-_Personal_-_Mic.png>)
K8s - Cluster Detail

> [!NOTE] What is a `Pod` in K8s?
>
> In Kubernetes, a _pod_ is the smallest unit of computing.
>
> - In Docker, it's the _container_.

> [!NOTE] What are the components of the control plane in K8s?
>
> - `kube-apiserver`: The core component server that exposes the Kubernetes HTTP API
> - `etcd`: Consistent and highly-available key value store for all API server data
> - `kube-scheduler`: Looks for Pods not yet bound to a node, and assigns each Pod to a suitable node.
> - `kube-controller-manager`: Core control loops of K8s: Runs controllers to implement Kubernetes API behavior.
> - `cloud-controller-manager` (Optional): Integrates with underlying cloud provider(s).(AWS, Azure, GCP)

> [!NOTE] What is `kube-controller-manager`?
>
> `kube-controller-manager` is the core control loops of K8s
>
> - Watches the shared state of the cluster through the `apiserver`
> - Makes changes attempting to move the current state towards the desired state

![Alt text](<images/Screenshot 2023-09-30 at 20.08.44 - Kubernetes_101__learn.cantrill.io_-_Personal_-_Mic.png>)
K8s - Summary

See [Kubernetes Components | Kubernetes Documentation](https://kubernetes.io/docs/concepts/overview/components/)

## Backups & DR (MORE COMING SOON)

### Recovery Point Objective (RPO) & Recovery Time Objective (RTO) (16:54)

![Alt text](<images/Screenshot 2023-09-30 at 20.38.29 - Recovery_Point_Objective_(RPO)_&_Recovery_Time_Obj.png>)
Recovery Point Objective (RPO)

> [!NOTE] What is RPO?
> Recovery Point Objective (RPO) is the maximum (amount of) data (in time) can be lost.

![Alt text](<images/Screenshot 2023-09-30 at 20.43.54 - Recovery_Point_Objective_(RPO)_&_Recovery_Time_Obj.png>)
Recovery Time Objective (RTO)

> [!NOTE] What is RTO?
> Recovery Time Objective (RTO) is the maximum of time that the system can be down.

> [!NOTE] When does RTO begin and end?
> RTO
>
> - begins at at momne of failure
> - ends when the system is operational (and handled back to business)

> [!NOTE] What need to be cautious about RTO?
>
> - How long until we know there is an issue?
> - What is the issue?
> - Do we need to restore a backup? How to restore the backup?

![Alt text](<images/Screenshot 2023-09-30 at 20.45.40 - Recovery_Point_Objective_(RPO)_&_Recovery_Time_Obj.png>)
RPO & RTO - Summary

## Data Formats & Configuration Formats (MORE COMING SOON)

### YAML aint markup language (YAML) 101 (6:12)

![Alt text](<images/Screenshot 2023-09-30 at 21.04.25 - YAML_aint_markup_language_(YAML)_101__learn.cantri.png>)
A YAML document is an "unordered list" of key:value pairs.

> [!TIP]
> In YAML, an "unordered list" is called a _dictionary_

![Alt text](<images/Screenshot 2023-09-30 at 21.05.48 - YAML_aint_markup_language_(YAML)_101__learn.cantri.png>)
YAML - Ordered list

> [!TIP]
> In YAML, an "ordered list" is called _sequence_, which can contains values of different types.

![Alt text](<images/Screenshot 2023-09-30 at 21.07.27 - YAML_aint_markup_language_(YAML)_101__learn.cantri.png>)
YAML - Structure

### Javascript Object Notation (JSON) 101 (4:25)

![Alt text](<images/Screenshot 2023-09-30 at 21.13.15 - Javascript_Object_Notation_(JSON)_101__learn.cantr.png>)
JSON - Introduction

![Alt text](<images/Screenshot 2023-09-30 at 21.13.52 - Javascript_Object_Notation_(JSON)_101__learn.cantr.png>)
JSON - Object & List

![Alt text](<images/Screenshot 2023-09-30 at 21.14.28 - Javascript_Object_Notation_(JSON)_101__learn.cantr.png>)
JSON - Nested Object
