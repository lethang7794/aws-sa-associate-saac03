# SECURITY, DEPLOYMENT & OPERATIONS

## AWS Secrets Manager (7:44)

![Alt text](<images/Screenshot from 2023-10-12 15-56-41.png>)
Secrets Manager vs System Manager's Parameter Store

![Alt text](../2000-SECURITY_DEPLOYMENTS_OPERATIONS/00_LEARNINGAIDS/SecretsManager-1.png)
AWS Secrets Manager - Architecture

## Application Layer (L7) Firewall (7:44)

![Alt text](../2000-SECURITY_DEPLOYMENTS_OPERATIONS/00_LEARNINGAIDS/L7Firewalls-1.png)
Firewall - Layer 3-4-5

> What is the drawback of Firewall Layer 3-4?
>
> Packets & segemnts of REQUEST and REQUEST are different and unrelated.
>
> Because Layer 3-4 don't know what is the data.

> What is a big improve of Firewall Layer 5?
>
> Firewall Layer 5 understand REQUEST & RESPONSE's **session**, it can know which REQUEST and RESPONSE is a pair.

![Alt text](../2000-SECURITY_DEPLOYMENTS_OPERATIONS/00_LEARNINGAIDS/L7Firewalls-2.png)
Firewall - Layer 7

> What does Firewall Layer 7 do?
>
> Firewall Layer 7 can:
>
> - understand HTTP/HTTPs.
> - and even decrypt the data (terminate TLS encryption) and encrypt again for the backend.
>
> 👉️ React to:
>
> - HTTP: Content, Headers, DNS, Rate...
> - SMTP: Mail metadata

## Web Application Firewall (WAF), WEBACLs, Rule Groups and Rules (19:18)

![Alt text](../2000-SECURITY_DEPLOYMENTS_OPERATIONS/00_LEARNINGAIDS/Web-Application-Firewall-WAF-1.png)
WAF - Architecture

![Alt text](<images/Screenshot from 2023-10-12 19-26-21.png>)
WAF - Web ACL

![Alt text](<images/Screenshot from 2023-10-12 19-28-54.png>)
WAF - Rule Groups

![Alt text](<images/Screenshot from 2023-10-12 19-33-04.png>)
WAF - Rules (Type - Statement - Action)

![Alt text](<images/Screenshot from 2023-10-12 19-35-18.png>)
WAF - Pricing

## AWS Shield (9:47)

![Alt text](<images/Screenshot from 2023-10-12 20-05-01.png>)
AWS Shield - DDOS Protection

![Alt text](<images/Screenshot from 2023-10-12 20-09-47.png>)
AWS Shield - Standard - Free - L3/L4

![Alt text](<images/Screenshot from 2023-10-12 20-11-55.png>)
AWS Shield - Advanced - Pricing & Benefit

![Alt text](<images/Screenshot from 2023-10-12 20-13-40.png>)
AWS Shield - Advanced - WAF Integration (L7) - Realtime + Health-based

## CloudHSM (14:36)

![Alt text](<images/Screenshot from 2023-10-12 20-23-56.png>)
CloudHSM - Overview

![Alt text](../2000-SECURITY_DEPLOYMENTS_OPERATIONS/00_LEARNINGAIDS/CloudHSM-1.png)
CloudHSM - Architecture

![Alt text](<images/Screenshot from 2023-10-12 20-29-06.png>)
CloudHSM - Use Cases

## AWS Config (6:14)

![Alt text](<images/Screenshot from 2023-10-12 20-46-24.png>)
AWS Config - Record config changes over time on resources

![Alt text](../2000-SECURITY_DEPLOYMENTS_OPERATIONS/00_LEARNINGAIDS/AWSConfig-1.png)
AWS Config - Architecture

## Amazon Macie (12:04)

![Alt text](<images/Screenshot from 2023-10-12 20-54-30.png>)
Amazon Macie - Data Security for S3

![Alt text](../2000-SECURITY_DEPLOYMENTS_OPERATIONS/00_LEARNINGAIDS/AmazonMacie-1.png)
Amazon Macie - Architecture

![Alt text](<images/Screenshot from 2023-10-12 20-57-03.png>)
Amazon Macie - Identifiers (AWS-managed / Custom)

![Alt text](<images/Screenshot from 2023-10-12 20-58-44.png>)
Amazon Macie - Findings (Policy / Sensitive data)

## [_DEMO_] Amazon Macie (15:35)

## Amazon Inspector (6:28)

![Alt text](<images/Screenshot from 2023-10-12 23-56-58.png>)
Amazon Inspector - Scan EC2 Instance + OS / Containers

![Alt text](<images/Screenshot from 2023-10-13 00-01-16.png>)
Amazon Inspector - Agentless & Agent

![Alt text](<images/Screenshot from 2023-10-13 00-02-23.png>)
Amazon Inspector - CVE, CIS, Security Best Practices

## Amazon GuardDuty (4:14)

![Alt text](<images/Screenshot from 2023-10-13 00-07-29.png>)
Amazon GuardDuty - Security Monitoring Service (with AI/ML)

![Alt text](../2000-SECURITY_DEPLOYMENTS_OPERATIONS/00_LEARNINGAIDS/AmazonGuardduty-1.png)
Amazon GuardDuty - Architecture

## Section Quiz
