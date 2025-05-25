# 🐳 Docker Basics - Internals, Host Interaction & Lifecycle

This README covers key Docker concepts: the internal structure of container base images, how containers interact with the host OS, and the Docker lifecycle.

---

## 📁 1. Files and Folders in Docker Container Base Images

These directories are typically found inside a Linux-based Docker container (like Ubuntu or Alpine):

| Folder | Description |
|--------|-------------|
| `/bin`  | Contains basic command binaries (e.g., `ls`, `cp`, `ps`). |
| `/sbin` | Contains system binaries (e.g., `init`, `shutdown`). |
| `/etc`  | Stores system and application configuration files. |
| `/lib`  | Contains shared libraries needed by binaries in `/bin` and `/sbin`. |
| `/usr`  | Holds user-level apps, libraries, and documentation. |
| `/var`  | Contains variable data like logs, caches, and spool files. |
| `/root` | Home directory for the `root` user inside the container. |

---

## 🧩 2. Files and Folders Used from the Host Operating System

Even though containers are isolated, they still rely on some host OS components:

| Host Resource | Description |
|---------------|-------------|
| **File System (Bind Mounts)** | Docker can map host directories into the container using volumes. |
| **Networking Stack** | Containers share or are connected to the host network via bridges or virtual NICs. |
| **System Calls** | Containers rely on the host kernel to process system calls (e.g., file I/O, memory access). |
| **Namespaces** | Provides isolation for filesystems, process IDs (PIDs), networking, users, etc. |
| **Control Groups (cgroups)** | Manages and limits container resources like CPU, memory, and I/O. |

---

## 🔁 3. Docker Image & Container Lifecycle

Here's how Docker works at a high level:

### 🏗️ docker build
Builds a Docker image from a Dockerfile.

```bash
docker build -t myapp .
```

### 🚀 docker run
Runs a container based on a Docker image.
```bash
docker run -d -p 80:80 myapp
```

