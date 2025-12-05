####Dockerfile and Sample Project

## Overview

A Dockerfile is a blueprint for building Docker images. It defines the steps needed to assemble an image and ensures consistent builds across environments.

## Sample Application

Example: A simple Node.js app that displays “Hello from Docker!”.

### index.js

```javascript
const express = require('express');
const app = express();
app.get('/', (req, res) => res.send('Hello from Docker!'));
app.listen(80, () => console.log('App running on port 80'));
```

## Example Dockerfile

```Dockerfile
# Stage 1: Build
FROM node:18 AS build
WORKDIR /app
COPY package*.json ./
RUN npm install --production
COPY . .

# Stage 2: Runtime
FROM node:18-slim
WORKDIR /app
COPY --from=build /app /app
EXPOSE 80
CMD ["node", "index.js"]
```

## Commands

```bash
docker build -t <username>/sample-app:latest .
docker run -d -p 8080:80 <username>/sample-app:latest
docker ps
docker logs <container_id>
```

## Verification

* Use `docker ps` to confirm the container is running.
* Access `http://localhost:8080` to verify functionality.

### What I Know

* How to write and build a Dockerfile.
* Basic Docker commands for running and managing containers.

### What I Learned

* How each Dockerfile instruction affects image layers.
* How to optimize images using multistage builds.

