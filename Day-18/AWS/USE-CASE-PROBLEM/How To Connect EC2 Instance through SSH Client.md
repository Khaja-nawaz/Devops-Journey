# 🔐 Connect to AWS EC2 Instance Using PuTTY (SSH Client on Windows)

This guide explains how to connect to your AWS EC2 instance securely using **PuTTY**, a popular SSH client for Windows.

---

## 🧰 Prerequisites

- ✅ AWS EC2 instance (Linux-based) running
- ✅ `.pem` private key file downloaded during EC2 launch
- ✅ PuTTY installed on your system
- ✅ [PuTTYgen](https://www.puttygen.com/) (included with PuTTY installation)

---

## 🪜 Steps to Connect

### 1️⃣ Convert `.pem` to `.ppk` (PuTTY format)

1. Open **PuTTYgen**
2. Click `Load` and select your `.pem` file (choose *All Files* if it’s hidden)
3. Click `Save private key` → Save as `.ppk`

---

### 2️⃣ Launch PuTTY and Configure Connection

1. Open **PuTTY**
2. In the **Host Name (or IP address)** field, enter:

