# Domain Registration and Hosting

```mermaid
sequenceDiagram
    actor Ryan
    participant Sally
    participant Ron
    participant Henry

    Ryan->>Sally: Buy ryan-corp.org

    Sally->>Ron: Give me ryan-corp.org
    Ron->>Sally: Here is your ryan-corp.org

    Sally->>Henry: Can you host the zone for ryan-corp.org on your NS?
    Henry->>Sally: OK. Here are the domains for the NS?

    Sally->>Ron: This is the NS for my ryan-corp.org?
    Ron->>Sally: OK. If someone want to go to ryan-corp.org. I'll give them these NS.
```