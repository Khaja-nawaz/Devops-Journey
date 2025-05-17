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
    


## 🛠 Container Runtime: `runc` and `containerd`

- **runc**: The low-level CLI tool that actually runs containers according to OCI (Open Container Initiative) specifications.
- **containerd**: A container runtime that manages the entire container lifecycle — including image transfer, container execution, storage, and networking. Used by Docker under the hood.

---

## 🌈 Canary Deployment (Intro)

Canary deployment is a technique to reduce the risk of introducing a new software version in production by gradually rolling out the change to a small subset of users before a full deployment.

### ✅ Benefits:
- Reduces the blast radius of failures.
- Enables real-user testing before full rollout.
- Easy to rollback if something goes wrong.

---

## ✅ Summary
- Learned the core Docker concepts: image, container, Dockerfile, and Docker Hub.
- Understood what container runtimes (`runc`, `containerd`) are.
- Studied the basics of Canary Deployment for safe, progressive releases.



