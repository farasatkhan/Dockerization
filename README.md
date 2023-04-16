# Dockerization
The repository contains a collection of tutorials and guides that will help you get started with Docker, as well as a variety of small Docker projects that you can use as templates for your own projects.

## Docker Installation

```bash
sudo apt install -y docker.io
```

## Docker Compose Installation
```bash
curl -SL https://github.com/docker/compose/releases/download/v2.17.2/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

docker-compose --version
```

## Docker Cheat Sheet

### Images

Builds a Docker image with the specified name and a Dockerfile in the current directory.
```bash
docker build -t <image_name>
```

Builds a Docker image with the specified name and a Dockerfile in the current directory, ignoring the cache.
```bash
docker build -t <image_name> . –no-cache
```

Lists all Docker images that are currently stored on the host.
```bash
docker images
```

Lists all Docker images that are currently stored on the host.
```bash
docker image ls
```

Removes the specified Docker image from the host.
```bash
docker rmi <image_name>
```

Removes all unused Docker images, including intermediate images, from the host.
```bash
docker image prune
```


### Docker Hub

Logs in to a Docker registry with the specified username.
```bash
docker login -u <username>
```

Pushes a Docker image with the specified name to a registry with the specified username.
```bash
docker push <username>/<image_name>
```

Searches for a Docker image with the specified name in Docker Hub or other registries.
```bash
docker search <image_name>
```

Downloads a Docker image with the specified name from a registry.
```bash
docker pull <image_name>
```