# 🐳 Docker Compose Basics — Practice Project

This repository documents my hands-on learning and practice with **Docker Compose**, using a forked project from an online repository.

---

## 📚 What I Learned

- Basic understanding of **Docker Compose**:
  - How it simplifies the process of running multi-container Docker applications.
  - How to define services, networks, and volumes in a `docker-compose.yml` file.

- Forked an online repo to explore and run a real-world example using Compose.

---

## 🧱 Key Concepts

| Concept        | Description                                                                 |
|----------------|-----------------------------------------------------------------------------|
| `docker-compose.yml` | Defines all services, networks, and volumes for the app.              |
| Services       | Individual components (like app, database) that run in separate containers. |
| Volumes        | Used to persist data across container restarts.                             |
| Networks       | Allows communication between services.                                      |

---

## 🔁 Practice Steps

1. **Forked and cloned** a sample project from GitHub.
2. **Explored** the `docker-compose.yml` file to understand each section.
3. **Ran the app** using:
   ```bash
   docker-compose up
    ```

## Stopped the services with
```bash
docker-compose down
```
