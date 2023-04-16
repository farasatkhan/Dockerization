Dockerizing a Node.js Application
This guide will show you how to create a Docker container for a simple Node.js application.

Prerequisites
Before getting started, you'll need to have the following installed on your system:

Docker

Instructions
Install Docker by running the following command in your terminal:

```bash
sudo apt install -y docker.io
```

Create a file named index.js in a directory of your choice and add the following code to it:

```javascript
console.log("Hello World Docker!");
```

Create a file named Dockerfile in the same directory as index.js with the following contents:

```bash
Copy code
FROM node:alpine
COPY . /app
WORKDIR /app
CMD node index.js
```

Build the Docker image by running the following command in the same directory as index.js and Dockerfile:

```bash
docker build -t hello-docker-js .
```

Verify that the image has been created by running the following command:

```bash
docker images
```

Run the Docker container by executing the following command:

```bash
docker run hello-docker-js
```

You should see "Hello World Docker!" output to the console.

Tag the image with your Docker Hub username by running the following command:

```bash
docker tag hello-docker-js farasatkhan/hello-docker-js:v1.0
```

Log in to Docker Hub by executing the following command:

```bash
docker login
```

Push the image to Docker Hub by running the following command:

```bash
docker push farasatkhan/hello-docker-js:v1.0
```

Pull the image from Docker Hub by running the following command:

```bash
docker pull farasatkhan/hello-docker-js:v1.0
```

Run the Docker container from the image you just pulled by executing the following command:

```bash
docker run farasatkhan/hello-docker-js:v1.0
```

You should see "Hello World Docker!" output to the console.