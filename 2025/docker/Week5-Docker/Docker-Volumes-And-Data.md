####Volumes and Data Persistence

## Overview

Docker volumes provide a way to persist data even after a container is removed. They are stored outside the container filesystem and can be reused by multiple containers.

## Commands

### 1. Create a Docker Volume

```bash
docker volume create my_volume
```

### 2. Run a Container Using the Volume

```bash
docker run -d -v my_volume:/app/data <username>/sample-app:v1.0
```

### 3. Verify the Volume

```bash
docker volume ls
docker inspect my_volume
```

## Benefits of Volumes

* Data persists even if containers are deleted.
* Useful for sharing data between multiple containers.
* Easier backups and portability.

## Example Use Case

In a web application, volumes can be used to store logs, database files, or user-uploaded content.

### What I Know

* Basic commands to create and attach volumes.

### What I Learned

* How volumes ensure data persistence and simplify container management.
* When to use volumes versus bind mounts depending on environment needs.

