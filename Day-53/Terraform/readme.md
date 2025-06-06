# 🚀 Terraform AWS Infrastructure: VPC + EC2 + Flask App

This project provisions an AWS infrastructure using **Terraform**, including:

- A custom VPC and subnet
- Internet Gateway and route table
- Security group for HTTP & SSH access
- EC2 instance running a Python Flask web app
- Key pair usage for SSH access
- Provisioning with file upload and remote command execution

---

## 📁 Project Structure

terraform-project/
│
├── main.tf # All resources declared here
├── app.py # Simple Flask application to be deployed on EC2
└── ~/.ssh/id_rsa # (local private key - used in Terraform for provisioning)


---

## 🧠 What I Practiced

### ✅ Terraform Core Concepts

- Provider configuration (`aws`)
- Reusable variables (`cidr`)
- Resource creation (VPC, subnet, EC2, route table, etc.)
- File and remote-exec provisioners
- Security groups and networking

### ✅ SSH Keys & Provisioning

- Used a locally available private key (`~/.ssh/id_rsa`)
- Referenced public key to create an AWS key pair
- Copied `app.py` to EC2 instance
- Installed Flask & launched the app using remote commands

---

## 🌐 Accessing the Application

Once provisioned, the Flask app will be available at:

```http
http:localhost:8000
```

## It will return
```
hello Terraform
```



---

## 📦 Key Terraform Commands Used

```bash
terraform init                 # Initialize the project
terraform plan                 # See what will be created
terraform apply                # Create resources
terraform apply -refresh-only # Refresh the state without modifying infra
terraform output               # View output values
terraform state show <res>    # Inspect specific resources in state
```


## 🧪 Provisioning Commands Run on EC2
```bash 
sudo apt update -y
sudo apt-get install -y python3-pip
pip3 install flask
python3 app.py &
```

## 🧱 AWS Resources Provisioned

| Resource                | Type                           |
| ----------------------- | ------------------------------ |
| VPC                     | aws\_vpc                       |
| Subnet                  | aws\_subnet                    |
| Internet Gateway        | aws\_internet\_gateway         |
| Route Table             | aws\_route\_table              |
| Route Table Association | aws\_route\_table\_association |
| Security Group          | aws\_security\_group           |
| EC2 Instance            | aws\_instance                  |
| SSH Key Pair            | aws\_key\_pair                 |


## 🔐 SSH Key Pair Setup
- Private Key (Local): ~/.ssh/id_rsa

- Public Key (Used in AWS): ~/.ssh/id_rsa.pub
