# 🔐 Understanding SSH and SSH Keys

SSH (Secure Shell) is a cryptographic protocol used to securely connect a **remote server** with your **local machine**. It's a fundamental tool in DevOps and cloud operations.

---

## 🎯 Purpose of SSH

SSH allows secure access to a remote machine for:

- Terminal access
- File transfers (via SCP/SFTP)
- Running remote scripts or commands

---

## 🔑 SSH Key Types

SSH uses **asymmetric encryption** with two keys:

| Key Type      | Description                               |
|---------------|-------------------------------------------|
| **Public Key** | Shared with the server you want to access. |
| **Private Key**| Stored securely on your local machine.    |

These keys work together in a **two-way encryption process**.

---

## 🛠️ Key Exchange (Example: AWS EC2)

When creating an EC2 instance on AWS, a **PEM file** (private key) is downloaded and stored locally.

### 📌 SSH Authentication Flow:

```text
Local Machine                                  Remote Server (EC2)
---------------                                -------------------
[Private Key]                                  [Public Key]

      |                                                 |
      |--- SSH Request Sent --------------------------->|
      |                                                 |
      |<-- Encrypted Challenge Sent --------------------|
      |                                                 |
      |--- Decrypts with Private Key ------------------>|
      |                                                 |
      |<--- Access Granted if Auth is Valid ------------|

