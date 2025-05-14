# 🚀 EC2 Web Server Deployment via AWS CLI

This project demonstrates how to deploy a basic **Apache web server** on an **EC2 instance** using only the **AWS CLI**, showcasing a fully automated setup process.

---

## 📌 Objective

To launch an EC2 instance and automatically install and run a web server (Apache) using a shell script passed as **user data** via the AWS CLI.

---

## 🛠️ Tools & Services Used

- ✅ AWS EC2
- ✅ AWS CLI
- ✅ Amazon Linux 2 AMI
- ✅ Security Groups
- ✅ Apache HTTPD

---

## 🧾 Steps Performed

### 1. Create a Key Pair (for SSH access)
```bash
aws ec2 create-key-pair --key-name WebKey --query "KeyMaterial" --output text > WebKey.pem
```

