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
### 2. Create a Security Group and Allow HTTP & SSH
```bash
 aws ec2 create-security-group \
    --group-name WebSG \
    --description "Allow HTTP and SSH"

# Add HTTP (port 80)
aws ec2 authorize-security-group-ingress \
    --group-name WebSG \
    --protocol tcp \
    --port 80 \
    --cidr 0.0.0.0/0

# Add SSH (port 22)
aws ec2 authorize-security-group-ingress \
    --group-name WebSG \
    --protocol tcp \
    --port 22 \
    --cidr 0.0.0.0/0
```

### 3. Launch EC2 Instance
```bash
aws ec2 run-instances \
  --image-id ami-0abcdef1234567890 \  # Replace with the correct AMI for your region
  --count 1 \
  --instance-type t2.micro \
  --key-name WebKey \
  --security-groups WebSG
```
### 4. Connect to EC2 via SSH
``` bash
ssh -i WebKey.pem ec2-user@<your-ec2-public-ip>
```

### 5. Install and Start Apache Server

```bash
sudo yum update -y
sudo yum install httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd
```

### 6. Uploading a Static webpage to the  Apache Web Server
```bash
echo "<h1>Welcome! Deployed manually via AWS CLI</h1>" | sudo tee /var/www/html/index.html
<!--- So We are Creating page an Uploading it to apache web-server Directory ---> 
```
### 7. Access the Web Server

Visit http://<your-ec2-public-ip> in your browser to see the deployed web page.
