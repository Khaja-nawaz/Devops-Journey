# ☁️ AWS Lambda – Concepts and Notes

## 🔧 What Problem Does Lambda Solve?

- **Compute**: Run backend code without provisioning or managing servers.
- **Serverless**: Operates on a serverless architecture model where AWS handles the infrastructure.

---

## 🧱 Serverless Architecture (Overview)

- You are **not responsible** for managing or provisioning any servers.
- AWS **automatically creates compute instances** based on your application's needs.
- Lambda functions **automatically scale up and down** depending on the workload.
- You **do not manage IP addresses or underlying infrastructure**.
- Ideal for **event-driven** applications (e.g., reacting to file uploads, HTTP requests, or database changes).

---

## ⚙️ AWS Lambda Key Characteristics

- **Event-Driven Only**: Lambda functions run **only** in response to an event. They do **not** run persistently or on their own.
- **No Server Exposure**: You won’t get an IP address or access to the underlying host/server.
- **Handler Function Required**: The main entry point must be named:
  ```python
  def lambda_handler(event, context):
      pass

