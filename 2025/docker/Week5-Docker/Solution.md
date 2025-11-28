# Week 5 – Docker Basics & Advanced Challenge

## Overview

This week focused on mastering Docker fundamentals and advanced containerization workflows. Instead of sample exercises, I applied all learned concepts to three real-world projects: **TextPilot**, **UploadHub**, and **DockChat**. Each project demonstrates image optimization, container networking, orchestration, and security analysis in practice.

---

## 1. Project: TextPilot

**Repository:** [TextPilot](https://github.com/gauravchile/TextPilot)

### Description

TextPilot is a lightweight text summarization and sentiment analysis application built using Python and Flask.

### Docker Implementation

* Created a **multi-stage Dockerfile** for building and deploying a production-ready image.
* Added Docker **volumes** for persistent log storage.
* Configured **environment-based images** (`dev` and `prod`) for testing and deployment.
* Optimized final image size from **480MB to 130MB**.

### Commands Used

```bash
docker build -t gauravchile/textpilot:latest .
docker run -d -p 5000:5000 gauravchile/textpilot:latest
```

### Outcome

The application can be deployed instantly with a single Docker command, providing consistent and fast deployment.

### Key Takeaways

* Multi-stage builds significantly reduce image size.
* Persistent data management through volumes enhances reliability.

---

## 2. Project: UploadHub

**Repository:** [UploadHub](https://github.com/gauravchile/UploadHub)

### Description

UploadHub is a secure file upload and management platform built with Node.js and MongoDB.

### Docker Implementation

* Used **Docker Compose** to orchestrate the Node.js app and MongoDB service.
* Created a **custom Docker network** for service communication.
* Mounted volumes to persist uploaded files and database data.
* Integrated **Trivy** to scan for vulnerabilities before pushing to Docker Hub.

### Commands Used

```bash
docker-compose up -d
docker-compose down
```

### Outcome

Implemented automated orchestration of multi-container services with seamless startup and teardown.

### Key Takeaways

* Compose simplifies multi-container application management.
* Security scans are essential before pushing images to public registries.

---

## 3. Project: DockChat

**Repository:** [DockChat](https://github.com/gauravchile/DockChat)

### Description

DockChat is a real-time chat application leveraging Node.js, Socket.IO, and Redis for messaging.

### Docker Implementation

* Configured **multi-container architecture** (Node.js and Redis).
* Built optimized **distroless images** for enhanced performance and security.
* Used **Docker Compose** with environment variables for flexible deployments.
* Analyzed images with **Docker Scout** and mitigated reported vulnerabilities.

### Commands Used

```bash
docker-compose up -d
docker scout cves gauravchile/dockchat:latest
```

### Outcome

Deployed a secure, scalable, and optimized real-time chat application.

### Key Takeaways

* Using distroless images minimizes attack surfaces.
* Docker Scout helps identify and address potential image vulnerabilities.

---

## Tools and Technologies

| Category         | Tools Used                            |
| ---------------- | ------------------------------------- |
| Containerization | Docker, Docker Compose                |
| Optimization     | Multi-Stage Builds, Distroless Images |
| Security         | Docker Scout, Trivy                   |
| Networking       | Custom Docker Networks                |
| Registry         | Docker Hub                            |
| Monitoring       | Docker Logs, Stats                    |

---

## Key Learnings

* Designed production-grade Dockerfiles for real-world applications.
* Implemented orchestration with Docker Compose for multi-service apps.
* Enhanced image efficiency and security using multi-stage builds and distroless images.
* Performed vulnerability scanning and applied remediations using Docker Scout.

---

## Reflection

This week’s Docker challenges provided hands-on experience in developing and deploying containerized applications. Each project demonstrated:

* Efficient containerization and resource optimization.
* Practical orchestration and service scaling.
* Real-world application of Docker in DevOps workflows.

These learnings have strengthened my foundation for upcoming topics such as Kubernetes and container orchestration at scale.


