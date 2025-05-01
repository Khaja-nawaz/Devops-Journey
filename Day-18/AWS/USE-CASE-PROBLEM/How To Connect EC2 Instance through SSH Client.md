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

Example:
# 172.71.12.138 

> Use `ubuntu@` for Ubuntu AMIs, `ec2-user@` for Amazon Linux

3. In the left menu, go to:

4. Connection > SSH > Auth > Credentials

5. 4. Click `Browse` and select your `.ppk` file

---

### 3️⃣ Save Session (Optional)

- Go back to **Session**
- Enter a name under `Saved Sessions` and click **Save**

---

### 4️⃣ Connect

- Click **Open**
- Accept the security alert if prompted
- You’re now connected to your EC2 instance via SSH 🎉

---

## 🧠 Notes

- Make sure your **Security Group** allows inbound SSH (port 22) from your IP
- If connection fails, check:
- Public IP of your EC2 instance
- SSH port access in the security group
- Correct username (`ec2-user`, `ubuntu`, etc.)
- That the instance is running

---

## 📌 Quick Reference

| AMI Type         | Username      |
|------------------|---------------|
| Amazon Linux     | `ec2-user`    |
| Ubuntu           | `ubuntu`      |
| CentOS           | `centos`      |
| RHEL             | `ec2-user`    |
| Debian           | `admin` / `root` |

---

## 📎 Helpful Links

- [Download PuTTY](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html)
- [AWS EC2 Key Pairs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html)


