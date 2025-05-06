# 🐧 Linux – Process & Service Management (Intermediate Basics)

This README documents my continued learning of **Linux process trees**, **user processes**, and **service control** using common system commands.

---

## 📦 Commands I Learned

### 🌳 `pstree`

Displays running processes in a **tree format** to visualize parent-child relationships.

| Command                      | Description                                       |
|-----------------------------|---------------------------------------------------|
| `pstree`                    | Show all processes in a tree structure            |
| `pstree $(whoami)`          | Show only processes started by the current user   |

---

### 👤 `ps`

Displays information about **currently running processes**.

| Command              | Description                              |
|----------------------|------------------------------------------|
| `ps`                 | Show processes in current terminal       |
| `ps -u $(whoami)`    | Show all processes started by the user   |
| `ps aux`             | Show all processes with detailed output  |

---

### 📊 `top` and `htop`

#### `top`
- Displays real-time system resource usage (CPU, memory, tasks).
- Use:
  - `q` to quit
  - `P` to sort by CPU usage
  - `M` to sort by memory usage

#### `htop` *(Advanced version of `top`)*
- Colorful and interactive interface
- Use arrow keys to scroll
- Easily kill or renice processes
- Run: `htop` (may require installation)

---

## 🛠️ `systemctl` – Service Management

Used to **control and inspect system services** (on systemd-based systems).

| Command                                                                 | Description                                         |
|--------------------------------------------------------------------------|-----------------------------------------------------|
| `systemctl list-unit-files`                                             | Lists all unit files (enabled/disabled services)    |
| `systemctl list-unit-files --type=service --state=running`             | Lists only currently running services               |
| `systemctl start --now nginx`                                          | Starts the `nginx` service and enables it on boot   |

---

## 📌 Summary of What I Practiced

✅ Viewed process hierarchy using `pstree`  
✅ Listed my user’s active processes with `ps -u`  
✅ Explored system services and their states with `systemctl`  
✅ Started and enabled services  
✅ Monitored real-time system performance with `top` and `htop`

---

## 🧠 Why This Matters

Understanding how to manage **processes** and **services** is critical for:

- Debugging performance issues  
- Managing system resources  
- Controlling startup and background services  
- Working in DevOps, SRE, or system admin roles

---

## 🚀 Next Steps

- Learn `kill`, `pkill`, `nice`, and `renice` commands  
- Explore `journalctl` for service logs  
- Set up custom services with `.service` unit files


