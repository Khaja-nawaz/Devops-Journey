# 🐳 My First Two Docker Projects

## This repo documents my first experience with Docker, where I containerized two different Python applications using Docker images.

## 📦 Project 1: Basic Python Script in Docker
### 📝 app.py
```python
  print("Hello Nigger From the Nigger Community")
```
### 🐳 Dockerfile
```Dockerfile
# Use an official Python runtime as a parent image
FROM python:3.9-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Run the Python script when the container starts
CMD ["python", "app.py"]
```

### ▶️ Commands Used
```bash
# Build the image
docker build -t simple-python-app .

# Run the container
docker run simple-python-app
```

## 🌐 Project 2: Python HTTP Web Server in Docker
### 📝 app.py
```python
import http.server
import socketserver

PORT = 8000

class MyCustomHandler(http.server.BaseHTTPRequestHandler):
    def do_GET(self):
        self.send_response(200)
        self.send_header("Content-type", "text/html")
        self.end_headers()
        message = "<html><body><h1>Hello from Docker Web!</h1><p>This is dynamic content from your Python app in Docker.</p></body></html>"
        self.wfile.write(bytes(message, "utf-8"))

print(f"Starting web server on port {PORT}...")

with socketserver.TCPServer(("", PORT), MyCustomHandler) as httpd:
    print(f"Web server serving forever on http://0.0.0.0:{PORT}")
    httpd.serve_forever()
```
### 🐳 Dockerfile
```Dockerfile

# Use an official Python runtime as a parent image
FROM python:3.9-slim-buster

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Expose the port the app runs on
EXPOSE 8000

# Command to run the application
CMD ["python", "app.py"]
```

### ▶️ Commands Used
```bash
# Build the image
docker build -t python-web-server .

# Run the container with port mapping
docker run -p 8000:8000 python-web-server
```
🧠 What I Learned
- How to write and structure a Dockerfile

- Every time the Dockerfile or app code is changed, the image must be rebuilt

- Basic Docker commands like:

```bash 
docker build -t <image-name> .
docker run <image-name>
docker run -p <host-port>:<container-port> <image-name>
docker ps
docker container ls
```

📝 Notes
- CMD is used to define the default command that runs inside the container.

- EXPOSE is a way of documenting the port, but you still need -p flag while running.

- Learned the concept of images, containers, and the importance of rebuilding when the code or Dockerfile changes.
