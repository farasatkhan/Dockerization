
## Run Docker Compose by Locally Building Image

1. Rename the file `docker-compose-local.yml` to `docker-compose.yml` but make sure to change the `docker-compose.yml` to something else before renaming `docker-compose-local.yml`.

2. To build the Docker images locally, run the following commands in your terminal:

```shell
docker-compose build --no-cache --force-rm
docker-compose up -d
```

This will build the Docker images based on the Dockerfile specified in your project, using the `--no-cache` and `--force-rm` options to ensure a fresh build and removal of any existing containers. The `-d` flag starts the containers in the background (detached mode).

Note: Make sure you are in the same directory as the `docker-compose.yml` file before running the above commands.

## Run the Application with Docker Compose and pre-built image from Docker Hub:

```shell
docker-compose up -d
```

This command will pull the pre-built image from Docker Hub and start the containers in the background (detached mode).