# [AWS AUTO-SCALING](https://docs.aws.amazon.com/autoscaling/)

AWS provides multiple services that you can use to scale your application.

Auto scaling is enabled by Amazon CloudWatch and is available at no additional charge beyond the service fees for CloudWatch and the other AWS resources that you use.

## [Amazon EC2 Auto Scaling](https://docs.aws.amazon.com/autoscaling/ec2/userguide/what-is-amazon-ec2-auto-scaling.html) (Auto Scaling groups)

Ensure that you have the correct number of Amazon EC2 instances available to handle the load for your application.

## [Application Auto Scaling](https://docs.aws.amazon.com/autoscaling/application/userguide/what-is-application-auto-scaling.html)

Auto scaling for resources beyond just EC2, e.g.

- Aurora replicas
- DynamoDB tables and global secondary indexes
- Amazon Elastic Container Service (ECS) services
  - AWS Fargate
- Lambda function provisioned concurrency
- Spot Fleet requests

## [AWS Scaling Plan](https://docs.aws.amazon.com/autoscaling/plans/userguide/what-is-a-scaling-plan.html)

Configure auto scaling for related or associated scalable resources (Aurora, DynamoDB, (EC2) Spot Fleet, EC2 Auto Scaling, and ECS)

## Amazon Elastic Kubernetes Services (EKS)'s autoscaling

### [Cluster Autoscaling](https://docs.aws.amazon.com/eks/latest/userguide/autoscaling.html)

- Kubernetes Cluster Autoscaler
- Karpenter

### Pod Scaling

- [Horizontal Pod Autoscaler](https://docs.aws.amazon.com/eks/latest/userguide/horizontal-pod-autoscaler.html): automatically scales the number of Pods in a deployment, replication controller, or replica set based on that resource's CPU utilization.

- [Vertical Pod Autoscaler](https://docs.aws.amazon.com/eks/latest/userguide/vertical-pod-autoscaler.html): automatically adjusts the CPU and memory reservations for your Pods to help "right size" your applications
