# Week 5 – Docker Basics & Advanced Challenge

## Overview

This repository contains documentation, exercises, and project implementations for **Week 5 of the #90DaysOfDevOps2025 Challenge**, focusing on mastering **Docker fundamentals and advanced concepts**. The week emphasized building, optimizing, and deploying real-world containerized applications.

## Topics Covered

* Docker Fundamentals: Images, Containers, Dockerfiles
* Multi-Stage Builds and Distroless Images
* Docker Hub: Tagging, Pushing, and Pulling Images
* Docker Volumes and Networking
* Docker Compose for Multi-Container Applications
* Docker Scout and Trivy for Image Security Analysis

## Real-World Projects Implemented

| Project                                               | Description                                                       | Docker Highlights                                                              |
| ----------------------------------------------------- | ----------------------------------------------------------------- | ------------------------------------------------------------------------------ |
| [TextPilot](https://github.com/gauravchile/TextPilot) | Flask-based text summarization & sentiment analysis app.          | Multi-stage builds, persistent volumes, environment-based images.              |
| [UploadHub](https://github.com/gauravchile/UploadHub) | Secure file upload and management system using Node.js & MongoDB. | Docker Compose orchestration, custom networking, volume persistence.           |
| [DockChat](https://github.com/gauravchile/DockChat)   | Real-time chat app using Socket.IO and Redis.                     | Multi-container setup, distroless images, Docker Scout vulnerability analysis. |

## Tools and Technologies Used

| Category           | Tools                                 |
| ------------------ | ------------------------------------- |
| Containerization   | Docker, Docker Compose                |
| Image Optimization | Multi-Stage Builds, Distroless Images |
| Security           | Docker Scout, Trivy                   |
| Networking         | Custom Docker Networks                |
| Registry           | Docker Hub                            |
| Monitoring         | Docker Logs, Stats                    |

## Repository Structure

```
├── README.md                     → Overview of Week 5
├── 1-Introduction-and-Concepts.md
├── 2-Dockerfile-and-Sample-Project.md
├── 3-Docker-Terminologies-and-Components.md
├── 4-Multi-Stage-Builds-and-Optimization.md
├── 5-Docker-Hub-and-Image-Management.md
├── 6-Volumes-and-Data-Persistence.md
├── 7-Networking.md
├── 8-Docker-Compose.md
├── 9-Docker-Scout-and-Security-Analysis.md
└── solution.md                   → Real-world Docker project summaries
```

## Learning Outcomes

* Built, optimized, and deployed containerized applications.
* Implemented orchestration with Docker Compose.
* Optimized image size using multi-stage builds.
* Enhanced image security with Docker Scout and Trivy.
* Managed persistent storage and custom networks.

## Reflection

This week provided hands-on, production-grade experience with Docker. Applying concepts to real projects like **TextPilot**, **UploadHub**, and **DockChat** reinforced practical understanding of containerization, orchestration, and DevSecOps principles.

## Resources

* [Docker Documentation](https://docs.docker.com/)
* [Docker Hub](https://hub.docker.com/)
* [Docker Compose Guide](https://docs.docker.com/compose/)
* [Docker Scout](https://docs.docker.com/scout/)
* [Trivy Scanner](https://aquasecurity.github.io/trivy/)

