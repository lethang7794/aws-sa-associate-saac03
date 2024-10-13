# NOSQL DATABASES & DYNAMODB

## DynamoDB - Architecture (10:49)

![Alt text](<images/Screenshot from 2023-10-15 15-11-56.png>)
DynamoDB Concepts

> [!NOTE] What is DynamoDB?

> [!NOTE] What is the selling point of DynamoDB?

![Alt text](../2200-NOSQL_DATABASES_DYNAMODB/00_LEARNINGAIDS/DynamoDBArch-1.png)
DynamoDB: [Tables - Items - Attributes](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.CoreComponents.html#HowItWorks.CoreComponents.TablesItemsAttributes) -  [Primary Key (PK)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.CoreComponents.html#HowItWorks.CoreComponents.PrimaryKey): Partition Key & Sort Key (PK & SK)

> [!NOTE] What is a *primary key*?
>
> [*Primary key*](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.CoreComponents.html#HowItWorks.CoreComponents.PrimaryKey) uniquely identifies each item in the table, so that no two items can have the same key.

> [!NOTE] What is a *partition key*?
>
> *Partition key* is the required part of *primary key*.
>
> - The *partition key* of an item is also known as its ***hash attribute***.
>
> - The term ***hash attribute*** derives from the use of an internal hash function in DynamoDB that evenly distributes data items across partitions, based on their *partition key* values.

> [!NOTE] What is a *sort key*?
>
> *Sort key* is an optional part of *primary key*.
>
> - The *sort key* of an *item* is also known as its ***range attribute***.
> - The term ***range attribute*** derives from the way DynamoDB stores items with the same partition key physically close together, in **sorted order** by the *sort key* value.

> [!NOTE] What is capacity of DynamoDB?

![Alt text](../2200-NOSQL_DATABASES_DYNAMODB/00_LEARNINGAIDS/DynamoDBArch-2.png)
DynamoDB On-Demand Backups

![Alt text](../2200-NOSQL_DATABASES_DYNAMODB/00_LEARNINGAIDS/DynamoDBArch-3.png)
DynamoDB PITR

![Alt text](<images/Screenshot from 2023-10-15 15-19-45.png>)
DynamoDB Considerations

> [!NOTE] How is DynamoDB billed?

## DynamoDB - Operations, Consistency and Performance - PART1 (13:06)

![Alt text](<images/Screenshot from 2023-10-15 16-43-53.png>)
DynamoDB Reading & Writing: On-Demand / Provisioned

![Alt text](../2200-NOSQL_DATABASES_DYNAMODB/00_LEARNINGAIDS/DynamoDB-Perf-1.png)
DynamoDB [Query](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Query.html): Find items based on primary key values

![Alt text](../2200-NOSQL_DATABASES_DYNAMODB/00_LEARNINGAIDS/DynamoDB-Perf-2.png)
DynamoDB [Scan](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Scan.html): Reads every item in a table or a secondary index.

## DynamoDB - Operations, Consistency and Performance - PART2 (11:24)

![Alt text](../2200-NOSQL_DATABASES_DYNAMODB/00_LEARNINGAIDS/DynamoDB-Consistency.png)
DynamoDB Consistency Model

![Alt text](<images/Screenshot from 2023-10-15 17-59-43.png>)
DynamoDB - WCU Calculation

![Alt text](<images/Screenshot from 2023-10-15 18-00-47.png>)
DynamoDB - RCU Calculation

## DynamoDB Local and Global [Secondary Indexes](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/HowItWorks.CoreComponents.html#HowItWorks.CoreComponents.SecondaryIndexes) (12:35)

![Alt text](<images/Screenshot from 2023-10-15 18-05-50.png>)
DynamoDB [Secondary Indexes](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/SecondaryIndexes.html): Alternative views on table data

> [!NOTE] In DynamoDB, what is attribute projection?
>
> When you create an index:
>
> - You define an **alternate key for the index** (partition key and sort key).
> - You also define the attributes that you want to be *projected*,  or copied, from the *base table* into the index.
>
> Every secondary index is associated with exactly one table, from which it obtains its data.
>
> ([Source](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/SecondaryIndexes.html))

![Alt text](<images/Screenshot from 2023-10-15 18-12-20.png>)
DynamoDB [Local Secondary Indexes (LSI)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/LSI.html): Alternative Sort Key

![Alt text](../2200-NOSQL_DATABASES_DYNAMODB/00_LEARNINGAIDS/DynamoDB-Indexes-1.png)
DynamoDB LSI: Using the base table's primary key

![Alt text](<images/Screenshot from 2023-10-15 18-16-53.png>)
DynamoDB [Global Secondary Indexes (GSI)](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GSI.html): Alternative Partition Key & Sort Key

![Alt text](../2200-NOSQL_DATABASES_DYNAMODB/00_LEARNINGAIDS/DynamoDB-Indexes-2.png)
DynamoDB GSI: Always eventually consistent

![Alt text](<images/Screenshot from 2023-10-15 18-20-14.png>)
LSI & GSI Considerations

> [!NOTE] When to use GSI & LCI?
>
> Amazon DynamoDB provides fast access to items in a table by specifying **primary key** values.
>
> However, many applications might benefit from having one or more secondary (or alternate) keys available, to allow **efficient access to data with attributes other than the primary key**.
>
> - GSI: Some applications might need to **perform many kinds of queries**, using a variety of **different attributes** as query criteria.
>
> - LSI: Some applications only need to query data using the base table's **primary key**. However, there might be situations where an alternative sort key would be helpful.

## DynamoDB - Streams & Lambda Triggers (9:10)

![Alt text](<images/Screenshot from 2023-10-15 20-31-44.png>)
DynamoDB - Stream Concepts

![Alt text](../2200-NOSQL_DATABASES_DYNAMODB/00_LEARNINGAIDS/DynamoDBStreams-and-Triggers-1.png)
DynamoDB - Stream Architecture

![Alt text](<images/Screenshot from 2023-10-15 20-37-22.png>)
DynamoDB - Trigger Concepts

![Alt text](../2200-NOSQL_DATABASES_DYNAMODB/00_LEARNINGAIDS/DynamoDBStreams-and-Triggers-2.png)
DynamoDB - Trigger Architecture

## DynamoDB - [Global Tables](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/GlobalTables.html) (5:09)

![Alt text](<images/Screenshot from 2023-10-15 20-46-05.png>)
DynamoDB - Global Tables: Overview

![Alt text](../2200-NOSQL_DATABASES_DYNAMODB/00_LEARNINGAIDS/DynamoDB-Globaltables-1.png)
DynamoDB - Global Tables: Architecture

> [!NOTE] What are exactly a DynamoDB *global table*?
>
> A *global table* is a **collection of one or more *replica tables***, all owned by a single AWS account.
>
> A *replica table* (or *replica*, for short) is a single DynamoDB table that functions as a part of a *global table*.
>
> Source: [Global Tables - How it works?](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/V2globaltables_HowItWorks.html)

> [!NOTE] Which type are global table's replica tables?
>
> All replica tables are master/active, supports both *read* and *write* operations.
>
> Each replica stores the same set of data items.

## DynamoDB - Accelerator (DAX) (10:58)

![Alt text](../2200-NOSQL_DATABASES_DYNAMODB/00_LEARNINGAIDS/DynamoDB-DAX-1.png)
Traditional Caches vs DAX

![Alt text](../2200-NOSQL_DATABASES_DYNAMODB/00_LEARNINGAIDS/DynamoDB-DAX-2.png)
DAX - Architecture

![Alt text](<images/Screenshot from 2023-10-15 21-23-10.png>)
DAX - Considerations

## DynamoDB - [TTL](https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/TTL.html) (4:49)

![Alt text](../2200-NOSQL_DATABASES_DYNAMODB/00_LEARNINGAIDS/DynamoDB-TTL-1.png)
DynamoDB - TTL: Expiring items

## Amazon Athena (8:19)

![Alt text](<images/Screenshot from 2023-10-15 23-47-09.png>)
Amazon Athena: Interactive SQL - Serverless Query Service

![Alt text](../2200-NOSQL_DATABASES_DYNAMODB/00_LEARNINGAIDS/AmazonAthena.png)
Amazon Athena - Architecture

![Alt text](<images/Screenshot from 2023-10-15 23-56-14.png>)
Amazon Athena: Queries without ETL

## [*DEMO*] Athena Demo - PART1 (13:31)

![Alt text](<images/Screenshot from 2023-10-16 10-01-31.png>)
Athena Demo - Architecture

## [*DEMO*] Athena Demo - PART2 (11:37)

## Elasticache (12:51)

![Alt text](<images/Screenshot from 2023-10-16 10-21-12.png>)
Elasticache - Managed in-memory database: Cache data & Reduce database load

![Alt text](../2200-NOSQL_DATABASES_DYNAMODB/00_LEARNINGAIDS/Elasticache-1.png)
Elasticache - Caching

![Alt text](../2200-NOSQL_DATABASES_DYNAMODB/00_LEARNINGAIDS/Elasticache-2.png)
Elasticache - Session State Data

![Alt text](<images/Screenshot from 2023-10-16 10-56-15.png>)
Elasticache - Redis vs MemcacheD

## Redshift Architecture (11:32)

![Alt text](<images/Screenshot from 2023-10-16 11-29-12.png>)
Redshift: Column based, Petabyte-scale Data warehouse (OLAP)

![Alt text](<images/Screenshot from 2023-10-16 11-31-44.png>)
Redshift: Server based

![Alt text](../2200-NOSQL_DATABASES_DYNAMODB/00_LEARNINGAIDS/Redshift-Architecture.png)
Redshift: Architecture

## Redshift DR and Resilience (3:40)

![Alt text](../2200-NOSQL_DATABASES_DYNAMODB/00_LEARNINGAIDS/Redshift-DRandResilience.png)
Redshift: DR & Resilience

## NoSQL Section Quiz
