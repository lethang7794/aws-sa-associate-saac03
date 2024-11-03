# AWS EC2 Instance Lifecycle

| Instance state | Description                                                                                                                                                            | Instance usage billing |
| -------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------- |
| pending        | The instance is preparing to enter the running state. An instance enters the pending state when it is launched or when it is started after being in the stopped state. | Not billed             |
| **running**    | The instance is running and ready for use.                                                                                                                             | **Billed**             |
| stopping       | The instance is preparing to be stopped.                                                                                                                               | Not billed             |
| **stopped**    | The instance is shut down and cannot be used. The instance can be started at any time.                                                                                 | Not billed             |
| shutting-down  | The instance is preparing to be terminated.                                                                                                                            | Not billed             |
| **terminated** | The instance has been permanently deleted and cannot be started.                                                                                                       | Not billed             |
