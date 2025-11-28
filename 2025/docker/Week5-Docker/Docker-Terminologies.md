#####Docker Terminologies and Components

## Overview

Docker has several core concepts and components that work together to build, run, and manage containers efficiently.

## Key Terminologies

| Term           | Description                                                      |
| -------------- | ---------------------------------------------------------------- |
| **Image**      | A read-only blueprint used to create containers.                 |
| **Container**  | A running instance of a Docker image.                            |
| **Dockerfile** | A file containing instructions to build an image.                |
| **Volume**     | Persistent storage for container data.                           |
| **Network**    | Enables communication between containers.                        |
| **Registry**   | A storage and distribution system for images (e.g., Docker Hub). |

## Docker Components

* **Docker Engine:** The runtime responsible for building and running containers.
* **Docker CLI:** Command-line tool to interact with the Docker daemon.
* **Docker Daemon:** Background service that manages Docker objects like images and containers.
* **Docker Hub:** Public registry for sharing and managing Docker images.

## Commands to Explore Docker Components

```bash
docker version
docker info
docker system df
docker images
docker ps -a
```

### What I Know

* The main components and their purposes in Docker architecture.

### What I Learned

* How the Docker CLI communicates with the Docker Daemon.
* How Docker Hub simplifies image distribution and sharing.

