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
