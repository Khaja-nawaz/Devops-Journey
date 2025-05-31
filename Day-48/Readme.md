# Docker Learning Journey with Rancher Desktop

This repository documents the foundational steps and commands learned for working with Docker, specifically using **Rancher Desktop** as the Docker engine and **WSL 2 (Ubuntu)** as the development environment on Windows.

## Table of Contents

1.  [Prerequisites](#prerequisites)
2.  [Core Docker Concepts & Commands](#core-docker-concepts--commands)
    * [Dockerfile Basics](#dockerfile-basics)
    * [Building Docker Images](#building-docker-images)
    * [Running Docker Containers](#running-docker-containers)
    * [Managing Containers](#managing-containers)
    * [Managing Images](#managing-images)
3.  [Working with Docker Hub (Registries)](#working-with-docker-hub-registries)
    * [Logging In](#logging-in)
    * [Tagging Images for Docker Hub](#tagging-images-for-docker-hub)
    * [Pushing Images](#pushing-images)
    * [Pulling Images](#pulling-images)
4.  [Rancher Desktop & WSL Troubleshooting (Common Issues)](#rancher-desktop--wsl-troubleshooting-common-issues)
    * [Problem: "Cannot connect to the Docker daemon"](#problem-cannot-connect-to-the-docker-daemon)
    * [Solution 1: Graceful Restart](#solution-1-graceful-restart)
    * [Solution 2: WSL Force Terminate & Shutdown](#solution-2-wsl-force-terminate--shutdown)
    * [Solution 3: Rancher Desktop Factory Reset (Last Resort)](#solution-3-rancher-desktop-factory-reset-last-resort)
5.  [Example Application](#example-application)

---

## Prerequisites

Before starting, ensure you have the following set up:

* **Windows Operating System**
* **Windows Subsystem for Linux 2 (WSL 2)** installed and configured.
* **Ubuntu Distribution** installed within WSL 2.
* **Rancher Desktop** installed and running on Windows, configured to use WSL 2.
    * Ensure "Integrate WSL Distributions" is enabled for your Ubuntu distribution in Rancher Desktop settings.
* A **Docker Hub account** (optional, but required for pushing/pulling from Docker Hub).

## Core Docker Concepts & Commands

### Dockerfile Basics

A `Dockerfile` is a text file that contains all the commands, in order, to build a given Docker image. It's the blueprint for your application's environment.

**Example `Dockerfile` for a Python Flask App:**
```dockerfile
# Use an official Python runtime as a parent image
FROM python:3.9-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
# RUN pip install --no-cache-dir -r requirements.txt # (if you have one)

# Make port 8000 available to the world outside this container
EXPOSE 5000

# Run app.py when the container launches
CMD ["python", "app.py"]

```
## Building Docker Images
To create a Docker image from your Dockerfile.
```bash
docker build -t my-flash-image .
```


## Running Docker Containers
To create and run a container from an image.
```bash
docker run -p 5000:5000 my-flask-image:latest
```

## Managing Containers
List running containers:
```bash
docker ps
```
Shows CONTAINER ID, IMAGE, COMMAND, CREATED, STATUS, PORTS, NAMES.

## List all containers (running and exited):
```bash 
docker ps -a
```
## Remove a stopped container:
```bash
docker rm <container-id-or-name>
```

## Stop a running container:
```bash
docker stop <container-id-or-name>
```
