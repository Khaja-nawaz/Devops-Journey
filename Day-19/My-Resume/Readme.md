# 🐧 Linux: Users, Groups, and Permissions

This repository documents my learning journey on managing **users**, **groups**, and **permissions** in Linux. These are essential topics for system administration and DevOps roles.

---

## 📚 Topics Covered

### 🔐 User & Group Management

| Command             | Description                                 |
|---------------------|---------------------------------------------|
| `useradd`           | Create a new user                           |
| `usermod`           | Modify an existing user (e.g., add to group)|
| `userdel`           | Delete a user                               |
| `passwd`            | Set/change a user’s password                |
| `groupadd`          | Create a new group                          |
| `groupmod`          | Modify a group                              |
| `groupdel`          | Delete a group                              |
| `usermod -aG`       | Add a user to a group (append)              |

### 🧑‍💻 Switching Users

| Command           | Description                          |
|------------------|--------------------------------------|
| `su root`        | Switch to root user                  |
| `su - root`      | Switch to root and load root’s env   |

---

## 📂 File Exploration & User Info

| Command                     | Description                                      |
|----------------------------|--------------------------------------------------|
| `tail /etc/passwd`         | View last lines of the user info file           |
| `head -n 5 /etc/passwd`    | View the first 5 lines of `/etc/passwd`         |
| `grep username /etc/passwd`| Search for a specific user                      |

> 📁 `/etc/passwd`: Contains user account information  
> 📁 `/etc/group`: Contains group definitions

---

## 🛡️ Understanding Permissions

Linux file permissions follow this format:

| Symbol | Meaning                      |
|--------|------------------------------|
| `r`    | Read                         |
| `w`    | Write                        |
| `x`    | Execute                      |
| `-`    | No permission                |

- First character: file type (`-` for files, `d` for directories)
- Next 9 characters: user, group, others (in sets of 3)

---

## 🔧 Next Steps

- Create user groups and assign directory permissions
- Explore `sudo` and privilege escalation policies

---

## 🧠 Why This Matters

Understanding how Linux handles users and permissions is **foundational for DevOps**, secure infrastructure, and managing cloud environments (like EC2 or Docker containers).


