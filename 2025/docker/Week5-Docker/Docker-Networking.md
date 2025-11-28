#Docker Networking

## Overview

Docker networking enables containers to communicate with each other, the host system, and external networks. It allows the creation of isolated environments where containers can interact securely.

## Types of Docker Networks

* **Bridge:** Default network for standalone containers.
* **Host:** Shares the host’s network stack.
* **Overlay:** Used in Swarm mode for multi-host networking.
* **None:** Disables networking for a container.

## Commands

### 1. Create a Custom Network

```bash
docker network create my_network
```

### 2. Run Containers on the Same Network

```bash
docker run -d --name sample-app --network my_network <username>/sample-app:v1.0
docker run -d --name my-db --network my_network -e MYSQL_ROOT_PASSWORD=root mysql:latest
```

### 3. Verify the Network

```bash
docker network ls
docker network inspect my_network
```

## Benefits

* Enables service discovery by container name.
* Provides network isolation and better security.
* Simplifies communication between application and database containers.

### What I Know

* Docker uses virtual networks to manage container communication.

### What I Learned

* How to create and inspect networks.
* How containers on the same custom network communicate by name instead of IP addresses.

