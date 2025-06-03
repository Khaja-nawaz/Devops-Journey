# 🐳 Docker Compose - Beginner Notes

Docker Compose is a tool that helps you define and run **multi-container Docker applications** using a simple YAML file.

---

## 📌 What is Docker Compose?

- Docker Compose lets you define an application’s services, networks, and volumes **in a single YAML file**.
- Instead of running `docker run` for each container manually, Compose helps you **spin up everything at once** with a single command (`docker-compose up`).
- Great for local development, testing, and even CI/CD pipelines.

---

## 🧱 How It Works

You write a `docker-compose.yml` file that defines:

- **Services**: Each container (e.g., web, database, cache).
- **Networks**: How containers talk to each other.
- **Volumes**: Persistent data storage shared between host and containers.

---

## 📄 Basic Structure of a Compose File

```yaml
version: '3.8'  # Compose file format version

services:
  web:
    image: nginx
    ports:
      - "80:80"

  redis:
    image: redis:alpine
```

## 🔗 Key Concepts

| Concept    | Description                                             |
| ---------- | ------------------------------------------------------- |
| `services` | Defines the list of containers to run                   |
| `image`    | Specifies the Docker image to use                       |
| `build`    | Optionally builds a Dockerfile in the current context   |
| `ports`    | Maps ports between host and container (host\:container) |
| `volumes`  | Mounts persistent data from host or volume              |
| `networks` | Lets containers communicate internally                  |


## ✅ Why Use Docker Compose?
- Multi-container orchestration made simple

- One command to manage all containers

- Easy to share your environment with teams via a single file

- Version controlled and reproducible setups

