# Common Networking Protocols and Ports — Week 1 of 90DaysOfDevOps-2025

Understanding protocols and their associated port numbers is critical for network configuration, troubleshooting, and security in DevOps environments. This document summarizes the most important protocols and ports used across various DevOps workflows.

---

## Common Networking Protocols and Ports

| Protocol       | Port  | Description                        | DevOps Use Case                                            |
| -------------- | ----- | ---------------------------------- | ---------------------------------------------------------- |
| HTTP           | 80    | Unsecured web communication        | Accessing web servers and dashboards                       |
| HTTPS          | 443   | Secure web communication using TLS | Jenkins, Grafana, Prometheus dashboards                    |
| SSH            | 22    | Secure remote shell access         | Managing servers, Git repositories, and automation scripts |
| FTP            | 21    | File Transfer Protocol             | Transferring build artifacts or configuration files        |
| DNS            | 53    | Domain name resolution             | Resolving hostnames in pipelines and deployments           |
| NTP            | 123   | Network Time Protocol              | Synchronizing system time for consistent logging           |
| SMTP           | 25    | Email transfer protocol            | Used in monitoring or alert systems                        |
| SNMP           | 161   | Simple Network Management Protocol | Network device monitoring and telemetry                    |
| MySQL          | 3306  | Database service                   | Application and backend data connectivity                  |
| PostgreSQL     | 5432  | Database service                   | CI/CD environments using PostgreSQL                        |
| Redis          | 6379  | In-memory key-value store          | Caching and queue systems in CI/CD pipelines               |
| MongoDB        | 27017 | NoSQL database                     | Cloud-native application backends                          |
| Docker API     | 2375  | Docker remote API (insecure)       | Container management (use with TLS or socket)              |
| Kubernetes API | 6443  | Kubernetes control plane API       | Cluster management and automation                          |

---

## Why Protocols and Ports Matter in DevOps

* Helps configure firewall and Security Group rules properly.
* Ensures secure communication between services, CI/CD tools, and cloud instances.
* Supports troubleshooting network or deployment issues.
* Enhances understanding of ingress and egress traffic control in Kubernetes and AWS.

---

## Security Best Practices

* Always restrict open ports to specific IP ranges.
* Use HTTPS instead of HTTP wherever possible.
* Regularly audit open ports with tools like `nmap` or `ss`.
* Implement security groups and firewall rules for isolation.

---

## References

* [List of TCP and UDP Port Numbers – Wikipedia](https://en.wikipedia.org/wiki/List_of_TCP_and_UDP_port_numbers)
* [IANA Port Registry](https://www.iana.org/assignments/service-names-port-numbers/service-names-port-numbers.xhtml)

---

**Week 1 Task Complete:** Documented key networking protocols and ports relevant to DevOps workflows.

