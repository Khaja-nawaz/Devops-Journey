# 🚀 Docker Compose: NGINX + Redis + Node.js Stack

This project is a hands-on exercise from the [Awesome Compose](https://github.com/docker/awesome-compose) GitHub repository. I specifically worked with the **nginx-redis-nodejs** stack to understand multi-container orchestration using Docker Compose.

---

## 🧠 What I Practiced

- **Cloned a real-world Docker Compose example** using:
  - **NGINX** as a reverse proxy
  - **Redis** as an in-memory key-value store
  - **Node.js** as the backend application

- Learned how these services communicate through Docker-defined networks.

---

## 📂 Project Structure (From Repo)

nginx-redis-nodejs/
│
├── nginx/
│ └── default.conf # NGINX configuration
│
├── redis/
│ └── Dockerfile # Optional Redis image customization
│
├── nodejs/
│ ├── Dockerfile # Node.js app Dockerfile
│ └── server.js # Node.js app logic
│
└── docker-compose.yml # Defines the full app stack



---

## 🧪 How I Ran It

1. **Cloned the repo:**
   ```bash
   git clone https://github.com/docker/awesome-compose.git
   cd awesome-compose/nginx-redis-nodejs
    ```

2. **Started the app stack:**
```bash
docker-compose up
```


3. To check its working 
```bash
http://localhost:8080
```

4. **To stop the service**

   ```bash
   docker
   ```
