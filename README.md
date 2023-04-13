# Docker "Data & Volumes" Example

Docker example that shows how to build "Data & Volumes" image.

## Prerequisites

Before you get started, you need to have the following tools installed:

- Docker

## Running the "Data & Volumes" Container

Navigate to the root directory of the cloned repository:

Build the Docker image:

```bash
docker build -t data-volumes .
```

Run the Docker container:

```bash
docker run -p 3000:8080 data-volumes
```

To stop the container:

```bash
# get the running container id
docker ps
# stop the container
docker stop container_id
```
