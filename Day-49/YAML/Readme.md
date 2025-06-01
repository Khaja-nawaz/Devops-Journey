# 📘 YAML Learning Notes

YAML (YAML Ain't Markup Language) is a human-readable data serialization standard. It is widely used in DevOps tools like Ansible, Kubernetes, and CI/CD pipelines for configuration and automation.

---

## ✅ Why YAML?

From a **DevOps Engineer's perspective**, YAML is especially useful because:

- ✅ **Easy to Read & Write**: Cleaner syntax compared to JSON or XML.
- ✅ **Supports Comments**: Unlike JSON, YAML allows inline and block comments using `#`.
- ✅ **Widely Used** in infrastructure as code, pipelines, container orchestration (e.g., Kubernetes), and configuration files.

---

## 📌 Key Topics in YAML

### 1️⃣ Key-Value Pairs

Basic structure for defining configuration:

```yaml
name: devops-engineer
language: YAML
version: 1.2
```

## 2️⃣ Lists (Sequences)
- Use a dash - to define multiple items:
```yaml
tools:
  - docker
  - terraform
  - ansible
```

## 3️⃣ Nested Structures (Dictionaries & Lists)
- Supports complex data structures using indentation:
```yaml
user:
  name: "John"
  skills:
    - cloud
    - automation
    - scripting
  details:
    location: "Remote"
    experience: "3 years"
```
## 📝 Tips
- Indentation is critical (use spaces, not tabs).

- Use # to comment your configuration.

- No data types required (strings, integers, booleans inferred automatically).

  
