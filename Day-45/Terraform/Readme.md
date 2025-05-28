
# 📦 Terraform - Modules and Advanced CLI Commands

This README documents what I learned about **Terraform Modules** and useful **Terraform CLI commands** today.

---

## 📁 What are Terraform Modules?

Modules in Terraform are reusable packages of Terraform configuration files. They help organize code, promote reusability, and keep infrastructure-as-code clean and maintainable.

### ✅ Benefits of Using Modules

- **Code Reuse**: Use the same configuration in multiple places.
- **Separation of Concerns**: Logical separation of components (network, compute, storage, etc.).
- **Scalability**: Easily scale and manage complex infrastructure.

### 🧱 Module Structure

A basic module typically includes:
```
my-module/
│
├── main.tf # Core resources
├── variables.tf # Input variables
├── outputs.tf # Outputs from the module
```
