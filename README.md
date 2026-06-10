# DockerTest2 - Dockerized Heroku Node.js App

This repository contains a Dockerized Node.js application based on the Heroku Node.js getting started sample.

## Technologies Used

* Node.js
* Express
* Docker

## Docker Hub Image

```bash
hishamatwa/heroku-node-app:v1
```

## Pull the Image from Docker Hub

```bash
docker pull hishamatwa/heroku-node-app:v1
```

## Run the Container

Using host network mode:

```bash
docker run -d --name heroku-node-app --network=host hishamatwa/heroku-node-app:v1
```

## Test the Application

```bash
curl http://127.0.0.1:5006
```

Or open it in the browser:

```text
http://192.168.1.12:5006
```

## Build the Image Locally

```bash
docker build --network=host -t heroku-node-app:v1 .
```

## Dockerfile Overview

The Dockerfile uses a lightweight Node.js base image, sets `/app` as the working directory, copies dependency files, installs production dependencies using `npm ci`, copies the application source code, sets the application port to `5006`, exposes the port, and starts the application using `npm start`.

## Push to Docker Hub

```bash
docker tag heroku-node-app:v1 hishamatwa/heroku-node-app:v1
docker push hishamatwa/heroku-node-app:v1
```
r
