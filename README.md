# Docker "Data & Volumes" Example

Docker example that shows how to build "Data & Volumes" image and use environnement variables.

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
# `-v` flag create a named volume to persiste data even if the container is removed
docker run -d -v feedback:/data-volumes/feedback -p 8080:3000 --rm --name data-volumes data-volumes
```

```bash
# list created volumes
docker volume ls
```

Set env var:

```bash
docker run -d -v feedback:/data-volumes/feedback -p 8082:80 -e PORT=80 --rm data-volumes:env
```
