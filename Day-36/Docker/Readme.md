# 🐳 Containers - Basics

This README summarizes the fundamentals of containers, their architecture, characteristics, and deployment models.

---

## 📦 What is a Container?

A **container** is a lightweight, standalone, and executable package that contains:

- ✅ Application code
- ✅ Application dependencies
- ✅ System-level dependencies

> Unlike virtual machines, containers do **not** have a full operating system. They share the **host machine’s kernel**, making them faster and more resource-efficient.

---

## ⚙️ Key Characteristics

| Feature                 | Description                                                                 |
|------------------------|-----------------------------------------------------------------------------|
| 🔸 Minimal OS Layer     | Uses a base image instead of a full OS.                                     |
| 🔸 Lightweight          | Shares host kernel → faster & smaller than VMs.                             |
| 🔸 Portable             | Runs consistently across environments.                                      |
| 🔸 Isolated             | Each container is sandboxed from others.                                    |
| 🔸 Fast Boot Time       | Starts in seconds due to lack of full OS overhead.                          |

---

## 🧭 Deployment Models for Containers

There are two ways to deploy containers:

### 1️⃣ Containers on a Virtual Machine
- Containers run **on top of a VM**, which itself runs on a physical server.
- Common in cloud environments (e.g., AWS EC2 + Docker).


### 2️⃣ Containers on a Physical Machine (Bare Metal)
- Containers run **directly on the host OS** without a VM layer.
- Faster performance, more direct access to hardware.


