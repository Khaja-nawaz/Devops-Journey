# 🧠 Linux Basics – systemctl, ps, and top

This README documents what I’ve learned about **managing processes and services in Linux** using basic but powerful commands: `systemctl`, `ps`, and `top`.

---

## 🛠 Commands I Learned

### 📦 `systemctl`

Used to **manage services** on systemd-based Linux systems.

| Command                       | Description                            |
|------------------------------|----------------------------------------|
| `systemctl status`           | View general system service status     |
| `systemctl status nginx`     | Check status of a specific service     |
| `systemctl start nginx`      | Start a service                        |
| `systemctl stop nginx`       | Stop a service                         |
| `systemctl restart nginx`    | Restart a service                      |
| `systemctl enable nginx`     | Enable service to start on boot        |
| `systemctl disable nginx`    | Disable service on boot                |

---

### 🧾 `ps`

Used to **view current running processes**.

| Command        | Description                              |
|----------------|------------------------------------------|
| `ps`           | Show processes in the current shell      |
| `ps aux`       | Show all running processes               |
| `ps -ef`       | Full-format listing of all processes     |

---

### 📊 `top`

A real-time **task manager** for Linux.

- Run `top` to view:
  - CPU & memory usage
  - Running processes
  - System load

**Tips**:
- Press `q` to quit
- Press `P` to sort by CPU usage
- Press `M` to sort by memory usage

---

## 🧠 Why This Is Useful

These commands help you:
- Monitor system performance
- Control background services like web servers, databases, etc.
- Troubleshoot resource usage and runaway processes

---

## 📌 Next Steps

- Learn `htop` (an improved version of `top`)
- Dive deeper into `journalctl` for log management
- Practice killing or restarting unresponsive processes


