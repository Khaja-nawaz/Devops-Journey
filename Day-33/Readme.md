# 🐳 Docker Desktop Installation & Basics

This document outlines how to install **Docker Desktop** and understand core Docker concepts such as **images**, **containers**, and **Dockerfiles**.

---

## ⚙️ Docker Desktop Installation

### 🖥️ For Windows & macOS

1. **Go to the official Docker website:**
   👉 [https://www.docker.com/products/docker-desktop](https://www.docker.com/products/docker-desktop)

2. **Download Docker Desktop:**
   - Choose your operating system (Windows or macOS).
   - Click on **"Download Docker Desktop"**.

3. **Install Docker Desktop:**
   - Follow the installation wizard.
   - Reboot if prompted.

4. **Verify Installation:**
   Open a terminal or command prompt and run:

   ```bash
   docker --version
   docker run hello-world
    
📦 Docker Basics
Docker is a platform that helps developers package applications and their dependencies into containers, making them portable and consistent across environments.

📌 Key Concepts
Term	Description
Docker	A tool that lets you build, test, and deploy apps quickly using containers.
Image	A read-only template that defines a container (like an app snapshot).
Container	A runnable instance of an image. Isolated and lightweight.
Dockerfile	A text file with instructions to create a Docker image.
Docker Hub	A public registry to host and share Docker images.
