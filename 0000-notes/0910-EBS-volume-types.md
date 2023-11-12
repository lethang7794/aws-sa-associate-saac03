# EBS Volume Types

## SSD-based

| Volume Type                       | gp2                                      | gp3         | io1                               | io2                          | io2 Block Express ‡                                      |
| --------------------------------- | ---------------------------------------- | ----------- | --------------------------------- | ---------------------------- | -------------------------------------------------------- |
| Durability                        | 99.8% - 99.9% durability                 | -           | 99.8% - 99.9% durability          | 99.999% durability           | -                                                        |
|                                   | (0.1% - 0.2% annual failure rate)        | -           | (0.1% - 0.2% annual failure rate) | (0.001% annual failure rate) | -                                                        |
| Use Cases                         | Transactional workloads                  | -           | Workloads that require            | -                            | Workloads that require                                   |
|                                   | Virtual desktops                         | -           |                                   | -                            | - Sub-millisecond latency                                |
|                                   | Medium-sized, single-instance databases, | -           | - sustained IOPS performance      | -                            | - Sustained IOPS performance                             |
|                                   | Low-latency interactive applications     | -           | - more than **16,000 IOPS**       | -                            | - More than **64,000 IOPS** or 1,000 MiB/s of throughput |
|                                   | Boot volumes                             | -           | I/O-intensive database workloads  | -                            |                                                          |
|                                   | Development and test environments        | -           |                                   | -                            |                                                          |
| Volume Size                       | 1 GiB - 16 TiB                           | -           | 4 GiB - 16 TiB                    | -                            | 4 GiB - 64 TiB                                           |
| Max IOPS per Volume (**16KB IO**) | **16,000**                               |             | **64,000** †                      | -                            | 256,000                                                  |
| Max Throughput per Volume         | Up to 250 MiB/s                          | 1,000 MiB/s | **1,000 MiB/s** †                 | -                            | 4,000 MiB/s                                              |
| Amazon EBS Multi-attach           | Not supported                            | -           | Supported                         | -                            | -                                                        |
| Max IOPS per Instance             | Not supported                            | -           | 350,000                           | 160,000                      | 350.000                                                  |
| Max Throughput per Instance       | Not supported                            | -           | 10,000 MB/s                       | 4,750 MB/s                   | 10,000 MB/s                                              |
| Boot Volume                       | Supported                                | -           | -                                 | -                            | -                                                        |

### gp3 volume performance

#### gp3 IOPS performance

- Baseline IOPS: 3,000 IOPS
- Additional IOPS cost: 500 IOPS / GiB of volume size
- Maximum IOPS can be provisioned for volumes **32 GiB** or larger (500 IOPS per GiB × 32 GiB = 16,000 IOPS).

#### gp3 throughput performance

- Baseline throughput: 125 MiB/s
- Additional throughput cost: 0.25 MiB/s per provisioned IOPS
- Maximum throughput can be provisioned at **4,000 IOPS** or higher and 8 GiB or larger (4,000 IOPS × 0.25 MiB/s per IOPS = 1,000 MiB/s).

| gp3 Volume Size        | 1GiB                            | ... | 8GiB                         | .... | 32GiB                        | ... | 16TiB              |
| ---------------------- | ------------------------------- | --- | ---------------------------- | ---- | ---------------------------- | --- | ------------------ |
|                        | (Min Volume Size)               |     |                              |      |                              |     | (Max Volume Size ) |
| IOPS performance       | Baseline IOPS (3,000 IOPS)      |     |                              |      | Max IOPS (16,000 IOPS)       |     |                    |
| Throughput performance | Baseline Throughput (125 MiB/s) |     | Max Throughput (1,000 MiB/s) |      | Max Throughput (1,000 MiB/s) |     |                    |

#### gp3 pricing

- gp3 volume instance with min spec:

```
3,000 iops / 1 GB = 3,000.00 IOPS to GB ratio (gp3)
125 MBps / 3,000 iops = 0.04 IOPS to Throughput ratio
1 volumes x 730 instance hours = 730.00 total instance hours
730.00 instance hours / 730 hours in a month = 1.00 instance months
1 GB x 1.00 instance months x 0.08 USD = 0.08 USD (EBS Storage Cost)
EBS Storage Cost: 0.08 USD
3,000 iops - 3000 GP3 iops free = 0.00 billable gp3 iops
EBS IOPS Cost: 0.00 USD
125 MBps - 125 GP3 MBps free = 0.00 billable MBps
EBS Snapshot Cost: 0 USD
Amazon Elastic Block Storage (EBS) total cost (monthly): 0.08 USD
```

- gp3 volume instance with 32GB volume size and no provisional IOPS, throughput

```
3,000 iops / 32 GB = 93.75 IOPS to GB ratio (gp3)
125 MBps / 3,000 iops = 0.04 IOPS to Throughput ratio
1 volumes x 730 instance hours = 730.00 total instance hours
730.00 instance hours / 730 hours in a month = 1.00 instance months
32 GB x 1.00 instance months x 0.08 USD = 2.56 USD (EBS Storage Cost)
EBS Storage Cost: 2.56 USD
3,000 iops - 3000 GP3 iops free = 0.00 billable gp3 iops
EBS IOPS Cost: 0.00 USD
125 MBps - 125 GP3 MBps free = 0.00 billable MBps
EBS Snapshot Cost: 0 USD
Amazon Elastic Block Storage (EBS) total cost (monthly): 2.56 USD
```

- gp3 volume instance with max spec:

```
16,000 iops / 32 GB = 500.00 IOPS to GB ratio (gp3)
1,000 MBps / 16,000 iops = 0.06 IOPS to Throughput ratio
1 volumes x 730 instance hours = 730.00 total instance hours
730.00 instance hours / 730 hours in a month = 1.00 instance months
32 GB x 1.00 instance months x 0.08 USD = 2.56 USD (EBS Storage Cost)
EBS Storage Cost: 2.56 USD

16,000 iops - 3000 GP3 iops free = 13,000.00 billable gp3 iops
Max (13000.00 iops, 0 minimum billable iops) = 13,000.00 total billable gp3 iops
13,000.00 iops x 1.00 instance months x 0.005 USD = 65.00 USD (EBS IOPS gp3 Cost)
EBS IOPS Cost: 65.00 USD

1,000 MBps - 125 GP3 MBps free = 875.00 billable MBps
Max (875.00 MBps, 0 minimum mbps) = 875.00 billable throughput (MBps)
875.00 MBps / 1024 MB per GB = 0.8545 billable throughput (GBps)
0.8545 GBps x 1.00 instance months x 40.96 USD = 35.00 USD (EBS gp3 throughput Cost)
EBS Snapshot Cost: 0 USD

2.56 USD + 65.00 USD + 35.00 USD = 102.56 USD (Total EBS cost)
Amazon Elastic Block Storage (EBS) total cost (monthly): 102.56 USD
```

## HDD-based

| Volume Type                     | st1                               | sc1                                                                  |
| ------------------------------- | --------------------------------- | -------------------------------------------------------------------- |
| Durability                      | 99.8% - 99.9% durability          | -                                                                    |
|                                 | (0.1% - 0.2% annual failure rate) | -                                                                    |
| Use Cases                       |                                   |                                                                      |
|                                 | - Big data                        | - Throughput-oriented storage for data that is infrequently accessed |
|                                 | - Data warehouses                 | - Scenarios where the lowest storage cost is important               |
|                                 | - Log processing                  |                                                                      |
| Volume Size                     | 125 GiB - 16 TiB                  | -                                                                    |
| Max IOPS per volume (1 MiB I/O) | 500                               | 250                                                                  |
| Max Throughput per volume       | 500 MiB/s                         | 250 MiB/s                                                            |
| Baseline throughput             | 40 MiB/s per TiB (Base)           | 12 MiB/s per TiB (Base)                                              |
|                                 | 250 MiB/s per TiB (Burst)         | 80 MiB/s per TiB (Burst)                                             |
|                                 |                                   |                                                                      |
|                                 |                                   |                                                                      |
| Amazon EBS Multi-attach         | Not supported                     | Not supported                                                        |
| Boot volume                     | Not supported                     | Not supported                                                        |
