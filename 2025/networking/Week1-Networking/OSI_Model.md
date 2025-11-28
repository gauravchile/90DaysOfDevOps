# OSI and TCP/IP Models — Week 1 of 90DaysOfDevOps-2025

Understanding the OSI (Open Systems Interconnection) and TCP/IP models is fundamental for every DevOps professional. These models describe how data moves from one system to another across a network.

---

## OSI Model (7 Layers)

| Layer | Name         | Description                                     | Real-World Example                              |
| ----- | ------------ | ----------------------------------------------- | ----------------------------------------------- |
| 7     | Application  | Provides services directly to user applications | HTTP, SSH, DNS                                  |
| 6     | Presentation | Data translation, encryption, and compression   | SSL/TLS for HTTPS, data encoding                |
| 5     | Session      | Manages communication sessions                  | Maintaining SSH or database sessions            |
| 4     | Transport    | Ensures reliable delivery of data               | TCP (connection-oriented), UDP (connectionless) |
| 3     | Network      | Handles routing and addressing of packets       | IP, Routers                                     |
| 2     | Data Link    | Manages MAC addresses and frames                | Ethernet, ARP                                   |
| 1     | Physical     | Deals with physical transmission of data        | Cables, Wi-Fi, Switches                         |

---

## TCP/IP Model (4 Layers)

| Layer          | Equivalent OSI Layers | Description                            | Example        |
| -------------- | --------------------- | -------------------------------------- | -------------- |
| Application    | Layers 5–7            | User-level protocols for communication | HTTP, DNS, SSH |
| Transport      | Layer 4               | End-to-end communication               | TCP, UDP       |
| Internet       | Layer 3               | Logical addressing and routing         | IP, ICMP       |
| Network Access | Layers 1–2            | Physical data transmission             | Ethernet, ARP  |

---

## Comparison of OSI and TCP/IP Models

| Feature             | OSI Model                  | TCP/IP Model                         |
| ------------------- | -------------------------- | ------------------------------------ |
| Layers              | 7                          | 4                                    |
| Developed By        | ISO                        | DoD (Department of Defense)          |
| Focus               | Conceptual framework       | Practical implementation             |
| Protocol Dependency | Independent                | Based on standard internet protocols |
| Common Use          | Learning and understanding | Real-world networking                |

---

## Key Takeaways

* The OSI model is a theoretical framework used to understand how data flows in a network.
* The TCP/IP model represents the real-world implementation of networking used on the internet.
* DevOps engineers often interact with the Application, Transport, and Network layers when dealing with services, routing, and deployments.

---

## References

* [OSI Model Explained – GeeksforGeeks](https://www.geeksforgeeks.org/layers-of-osi-model/)
* [TCP/IP Networking Basics – Cisco Documentation](https://www.cisco.com/)

---

**Week 1 Task Complete:** Documented understanding of OSI and TCP/IP models with real-world examples.

