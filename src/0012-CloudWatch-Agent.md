# Metrics collected by the CloudWatch Agent

CloudWatch Agent allows do the following:

- Collect _**internal** system-level metrics_ from Amazon **EC2 instances** across operating systems

  | Platform | Where CloudWatch Agent collects metrics from? | Metrics                     |
  | -------- | --------------------------------------------- | --------------------------- |
  | Windows  | Windows Performance Monitor                   |                             |
  |          |                                               | Available bytes             |
  |          |                                               | Cache Faults/sec            |
  |          |                                               | Page Faults/sec             |
  |          |                                               | Pages/sec                   |
  |          |                                               |                             |
  |          |                                               |                             |
  | Linux    | Memory metrics: `/proc/meminfo`               |                             |
  |          |                                               | Active (Bytes)              |
  |          |                                               | Available (Bytes)           |
  |          |                                               | Available Percent (Percent) |
  |          |                                               | Buffered (Bytes)            |
  |          |                                               | Cached (Bytes)              |
  |          |                                               | Free (Bytes)                |
  |          |                                               | Inactive (Bytes)            |
  |          |                                               | Total (Bytes)               |
  |          |                                               | Used (Bytes)                |
  |          |                                               | Used Percent (Percent)      |
  | Mac      | ~ Linux                                       | ~ Linux                     |

- Collect _system-level metrics_ from **on-premises servers**.

- Retrieve _custom metrics_ from your applications or services using the `StatsD` and `collectd` protocols.

- _Collect **logs**_ from Amazon EC2 instances and on-premises servers,
