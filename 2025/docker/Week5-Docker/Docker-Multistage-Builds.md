####Multi-Stage Builds and Optimization

## Overview

Multi-stage builds are an advanced Docker feature that helps create smaller, more efficient, and secure images. They allow developers to separate the build and runtime environments within a single Dockerfile.

## Benefits

* Smaller image sizes by copying only necessary files.
* Enhanced security through minimal runtime dependencies.
* Simplified build process and easier maintenance.

## Example Dockerfile (Go Application)

```Dockerfile
# Stage 1: Build Stage
FROM golang:1.20 AS builder
WORKDIR /app
COPY . .
RUN go build -o myapp .

# Stage 2: Runtime Stage
FROM gcr.io/distroless/base
COPY --from=builder /app/myapp /
ENTRYPOINT ["/myapp"]
```

## Commands

```bash
# Build before optimization
docker build -t sample-app:before .

# Build after adding multi-stage build
docker build -t sample-app:after .

# Compare image sizes
docker images | grep sample-app
```

## Observations

* The image size reduced significantly.
* Build artifacts were excluded from the final image.

## Best Practices

* Use minimal or distroless base images.
* Keep Dockerfiles simple and modular.
* Regularly scan images for vulnerabilities.

### What I Know

* Basic Docker build process.

### What I Learned

* How multi-stage builds optimize performance and reduce attack surface.
* How separating build and runtime environments ensures clean, efficient production images.

