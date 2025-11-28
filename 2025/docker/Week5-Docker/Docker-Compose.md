####Docker Compose

## Overview

Docker Compose is a tool for defining and running multi-container applications using a YAML configuration file. It simplifies deploying and managing services that depend on one another.

## Example `docker-compose.yml`

```yaml
version: '3.8'
services:
  web:
    image: <username>/sample-app:v1.0
    ports:
      - "8080:80"
    networks:
      - app-net
    volumes:
      - my_volume:/app/data
  db:
    image: mysql:8
    environment:
      MYSQL_ROOT_PASSWORD: root
    networks:
      - app-net

volumes:
  my_volume:

networks:
  app-net:
```

## Commands

### 1. Start the Application

```bash
docker-compose up -d
```

### 2. View Logs

```bash
docker-compose logs -f
```

### 3. Stop the Application

```bash
docker-compose down
```

## Benefits

* Simplifies running multiple containers as a single application.
* Makes configuration portable and easy to replicate.
* Supports environment variables and scaling.

### What I Know

* Docker Compose can manage multiple containers in one configuration file.

### What I Learned

* How Compose simplifies orchestration and service dependency management.
* The connection between Docker Compose and orchestration platforms like Kubernetes.

