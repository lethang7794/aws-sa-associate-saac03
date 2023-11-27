# GLOBAL CONTENT DELIVERY AND OPTIMIZATION

## CloudFront Architecture (14:56)

![Alt text](../1700-GLOBAL_CONTENT_DELIVERY_AND_OPTIMIZATION/00_LEARNINGAIDS/CloudFrontArchitecture-1.png)
Which problems CloudFront solves?

![Alt text](<../0000-notes/images/Screenshot 2023-10-10 at 15.08.19 - [ASSOCIATESHARED]_Cloudfront_Architecture__learn.c.png>)
CloudFront - Terms

![Alt text](../1700-GLOBAL_CONTENT_DELIVERY_AND_OPTIMIZATION/00_LEARNINGAIDS/CloudFrontArchitecture-2.png)
CloudFront - Regional Edge Cache & Edge Location

![Alt text](../1700-GLOBAL_CONTENT_DELIVERY_AND_OPTIMIZATION/00_LEARNINGAIDS/CloudFrontArchitecture-3.png)
CloudFront - Distribution & Cache Behavior

## CloudFront (CF) - Behaviours (9:21)

CloudFront's [Cache behavior settings](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html)

## CloudFront - TTL and Invalidations (13:48)

![Alt text](../1700-GLOBAL_CONTENT_DELIVERY_AND_OPTIMIZATION/00_LEARNINGAIDS/CloudFront-TTLandInvalidation-1.png)
CloudFront - Cache Hit

![Alt text](../1700-GLOBAL_CONTENT_DELIVERY_AND_OPTIMIZATION/00_LEARNINGAIDS/CloudFront-TTLandInvalidation-2.png)
CloudFront - Stale Object

![Alt text](<images/Screenshot 2023-10-10 at 15.39.46 - [SHAREDALL]_CloudFront_-_TTL_and_Invalidations__le.png>)
CloudFront - TTL

![Alt text](<images/Screenshot 2023-10-10 at 15.41.37 - [SHAREDALL]_CloudFront_-_TTL_and_Invalidations__le.png>)
CloudFront - Invalidations

## ACM (11:21)

![Alt text](<images/Screenshot 2023-10-10 at 15.49.45 - [ASSOCIATESHARED]_ACM__learn.can_—_Firefox_Develop.png>)
AWS Certificate Manager (ACM) - Overview

![Alt text](<images/Screenshot 2023-10-10 at 15.51.32 - [ASSOCIATESHARED]_ACM__learn.can_—_Firefox_Develop.png>)
AWS Certificate Manager (ACM) - Certificates

![Alt text](<images/Screenshot 2023-10-10 at 15.53.06 - [ASSOCIATESHARED]_ACM__learn.can_—_Firefox_Develop.png>)
AWS Certificate Manager (ACM) - Regional Service

> What types of services does ACM support?
>
> ACM supports: CloudFront, ALB.
>
> ACM does NOT support: EC2.

> Which region an ACM should be in?
>
> The same with AWS resources:
>
> - An ALB in `ap-southeast-1` needs a cert in ACM in `ap-southeast-1`.
> - CloudFront needs a cert in `us-east-1`. 👈 Global services are implicitly in `us-east-1`.

![Alt text](<images/Screenshot 2023-10-10 at 15.55.12 - [ASSOCIATESHARED]_ACM__learn.can_—_Firefox_Develop.png>)
AWS Certificate Manager (ACM) - Architecture

## CloudFront and SSL/TLS (14:59)

![Alt text](<images/Screenshot 2023-10-10 at 16.05.19 - [ASSOCIATESHARED]_Cloudfront_and_SSLTLS__learn.can.png>)
CloudFront & SSL

![Alt text](<images/Screenshot 2023-10-10 at 16.08.21 - [ASSOCIATESHARED]_Cloudfront_and_SSLTLS__learn.can.png>)
CloudFront & SNI

> What is the problem between old browsers and SSL?
>
> Old browsers don't support SNI.

![Alt text](../1700-GLOBAL_CONTENT_DELIVERY_AND_OPTIMIZATION/00_LEARNINGAIDS/CloudFrontArchitectureSSL-1.png)
CloudFront & SSL/SNI

## CloudFront (CF) - Origin Types & Origin Architecture (10:20)

CloudFront distributions supports [various origins](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/DownloadDistS3AndCustomOrigins.html).

CloudFront [Origin Settings](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/distribution-web-values-specify.html#DownloadDistValuesOrigin)

## [_DEMO_] CloudFront (CF) - Adding a CDN to a static Website-PART1 (16:23)

## [_DEMO_] CloudFront (CF) - Adding a CDN to a static Website-PART2 (12:24)

## [_DEMO_] CloudFront (CF) - Adding an Alternate CNAME and SSL (11:12)

## Securing CF and S3 using OAI (8:50)

![Alt text](../1700-GLOBAL_CONTENT_DELIVERY_AND_OPTIMIZATION/00_LEARNINGAIDS/CloudFrontSecuringOrigin-1.png)
Securing CF Content Delivery Path

![Alt text](<images/Screenshot 2023-10-10 at 19.33.28 - [ASSOCIATESHARED]_Securing_CF_and_S3_using_OAI__le.png>)
Origin Access Identity (OAI)

![Alt text](../1700-GLOBAL_CONTENT_DELIVERY_AND_OPTIMIZATION/00_LEARNINGAIDS/CloudFrontSecuringOrigin-2.png)
OAI - In Action

> ⚠️ AWS has introduced [OAC](https://aws.amazon.com/blogs/networking-and-content-delivery/amazon-cloudfront-introduces-origin-access-control-oac/) to replace OAI.
>
> [Docs](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html#private-content-restricting-access-to-s3-oai)

![Alt text](../1700-GLOBAL_CONTENT_DELIVERY_AND_OPTIMIZATION/00_LEARNINGAIDS/CloudFrontSecuringOrigin-3.png)
Securing Custom Origins

## CloudFront - Private Distribution & Behaviours (7:49)

![Alt text](<images/Screenshot 2023-10-10 at 19.48.12 - CloudFront_-_Private_Distribution_&_Behaviours__le.png>)
Private Distributions (\*behaviours)

![Alt text](<images/Screenshot 2023-10-10 at 19.49.41 - CloudFront_-_Private_Distribution_&_Behaviours__le.png>)
CloudFront Signed URLs 🔗 vs Cookies 🍪

![Alt text](../1700-GLOBAL_CONTENT_DELIVERY_AND_OPTIMIZATION/00_LEARNINGAIDS/CloudFrontPrivateDistributions.png)
Private Distributions - Architecture

## [_DEMO_] CloudFront (CF) - Using Origin Access Control (OAC) (new version of OAI) (11:21)

## Lambda@Edge (8:03)

![Alt text](<images/Screenshot 2023-10-10 at 20.33.56 - [ASSOCIATESHARED]_Lambda@Edge__lea_—_Firefox_Devel.png>)
Lambda@Edge - Overview

![Alt text](../1700-GLOBAL_CONTENT_DELIVERY_AND_OPTIMIZATION/00_LEARNINGAIDS/CloudFrontLambda%2540Edge.png)
Lambda@Edge - Architecture

![Alt text](<images/Screenshot 2023-10-10 at 20.38.32 - [ASSOCIATESHARED]_Lambda@Edge__lea_—_Firefox_Devel.png>)
Lambda@Edge - Use Cases ([More](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/lambda-examples.html#lambda-examples-redirecting-examples))

## Global Accelerator (10:29)

![Alt text](../1700-GLOBAL_CONTENT_DELIVERY_AND_OPTIMIZATION/00_LEARNINGAIDS/GlobalAccelerator-1.png)
Global Accelerator - The Problem

![Alt text](../1700-GLOBAL_CONTENT_DELIVERY_AND_OPTIMIZATION/00_LEARNINGAIDS/GlobalAccelerator-2.png)
Global Accelerator - Use Anycast to route traffic to AWS global backbone network

> What is anycast?
>
> **Anycast** is a _network addressing and routing_ method in which incoming requests can be routed to a variety of different locations (called “nodes”).
>
> Anycast IP allow a _single IP to be in multiple locations_.

![Alt text](<images/Screenshot 2023-10-10 at 20.48.34 - Global_Accelerator__lea_—_Firefox_Developer_Editio.png>)
Global Accelerator - Key Concepts

## CloudFront Field-Level Encryption

![Alt text](../1700-GLOBAL_CONTENT_DELIVERY_AND_OPTIMIZATION/00_LEARNINGAIDS/CloudFrontFieldLevelEncryption-1.png)
CloudFront - Without Field-Level Encryption

![Alt text](../1700-GLOBAL_CONTENT_DELIVERY_AND_OPTIMIZATION/00_LEARNINGAIDS/CloudFrontFieldLevelEncryption-2.png)
CloudFront - With Field-Level Encryption

> What does Field-Level Encryption do?
>
> Field-level encryption allows you to enable your users to securely upload sensitive information to your web servers.
>
> ([Docs](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/field-level-encryption.html))

## [CloudFront Geo Restriction](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/georestrictions.html) (Geo-blocking)

![Alt text](../1700-GLOBAL_CONTENT_DELIVERY_AND_OPTIMIZATION/00_LEARNINGAIDS/CloudFrontGeoRestrictions-1.png)
[CloudFront Geo Restriction](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/georestrictions.html#georestrictions-cloudfront)

![Alt text](../1700-GLOBAL_CONTENT_DELIVERY_AND_OPTIMIZATION/00_LEARNINGAIDS/CloudFrontGeoRestrictions-2.png)
[3rd-Party GeoLocation Service](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/georestrictions.html#georestrictions-geolocation-service)

## CDN and Optimisation Section Quiz
