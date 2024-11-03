# AWS BACKUPS

## S3

Amazon S3 is natively integrated with AWS Backup:

- Continuous backups (PITR)
- Periodic backups.

## EBS

- Snapshot are incremental volume copied to S3.
- The snapshot deletion process is designed so that you need to retain only the most recent snapshot in order to create volumes.

- Manually Snapshots:
- Automatic snapshot creation (NOT NATIVE):
  - Amazon Data Lifecycle Manager
  - AWS Backup.

## RDS

- Manually Snapshots
- Automated Backups:
  - 0 to 35 days retention.
  - RDS also use S3 to store transaction logs every 5 minutes.

## DynamoDB

- On-Demand Backup
- PITR:
  - 35 day recovery window
  - 1s Granularity

## Redshift

- Manually Snapshots
- Automatically increment backup:
  - Every 8 hours or 5 GB of data
  - 1-day retention (default, configurable up to 35 days)

Backup to S3 bucket, configurable to copy snapshots to another region for DR.
