# 📦 Terraform Provisioners

Provisioners in Terraform allow you to execute scripts or actions on a **local** or **remote** system **during resource creation or destruction**.

---

## 💡 What Are Provisioners?

Provisioners help perform configuration and setup tasks **after the infrastructure is provisioned**, or perform cleanup tasks before a resource is destroyed.

✅ You can use them for:
- Installing software
- Copying files
- Running setup scripts
- Logging info to local files

---

## 🚀 Types of Provisioners

### 🛰️ 1. `remote-exec`

- Runs shell commands **on the remote machine (like EC2)**.
- Needs **connection block** (SSH details like user, private_key, host).

```hcl
provisioner "remote-exec" {
  inline = [
    "sudo apt update -y",
    "sudo apt install -y nginx"
  ]
}
```


## 💻 2. local-exec

- Runs commands on your local machine (where Terraform is executed).

- Useful for local logging, file manipulations, or shell scripts.
```hcl
provisioner "local-exec" {
  command = "echo EC2 instance created > output.txt"
}
```


## 📁 3. file
Copies files from the local machine to the remote server.

```hcl
provisioner "file" {
  source      = "app.py"
  destination = "/home/ubuntu/app.py"
}
```
### ✅ Keywords:

- source: Local path

- destination: Remote path

## ⏳ When Do Provisioners Run?
Provisioners can run during:
| Phase     | Usage Example                   |
| --------- | ------------------------------- |
| `create`  | Install software, copy files    |
| `destroy` | Run cleanup or deregister steps |

To run something on destroy, use:
```hcl
provisioner "local-exec" {
  when    = "destroy"
  command = "echo Destroying resources!"
}
```

## ⚠️ Best Practices
- Avoid relying on provisioners for critical logic — prefer using tools like Ansible or cloud-init when possible.

- Use provisioners sparingly — Terraform is declarative, and provisioners break idempotency.


