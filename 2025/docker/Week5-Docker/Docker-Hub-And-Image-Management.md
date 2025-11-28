#####Docker Hub and Image Management

## Overview

Docker Hub is a cloud-based registry where Docker images are stored, shared, and managed. In this section, we tag, push, and pull images to/from Docker Hub.

## Steps

### 1. Tagging the Image

Assign a version tag to your image:

```bash
docker tag <username>/sample-app:latest <username>/sample-app:v1.0
```

### 2. Logging In

Authenticate with Docker Hub:

```bash
docker login
```

### 3. Pushing the Image

Push the tagged image to your Docker Hub repository:

```bash
docker push <username>/sample-app:v1.0
```

### 4. Pulling the Image

Verify the push by pulling the image:

```bash
docker pull <username>/sample-app:v1.0
```

## Best Practices

* Use **semantic versioning** for image tags (e.g., `v1.0`, `v1.1`).
* Always maintain a **latest** tag for the most stable build.
* Use **private repositories** for internal or sensitive projects.

### What I Know

* How to tag and push Docker images to Docker Hub.

### What I Learned

* Importance of version control for Docker images.
* How Docker Hub acts as a central registry for collaboration and CI/CD pipelines.

