# 🌐 Mosh (Mobile Shell)

**Mosh** (Mobile Shell) is a remote terminal application that allows roaming, supports intermittent connectivity, and provides intelligent local echo and line editing of user keystrokes.

It is a modern alternative to SSH, especially useful when:

- The network is unstable or slow.
- You're frequently switching between Wi-Fi, mobile data, or IPs.
- You want a better experience with long-lived sessions over high-latency networks.

---

## 🚀 Why Use Mosh Over SSH?

| Feature                    | SSH                          | Mosh                              |
|---------------------------|------------------------------|------------------------------------|
| Persistent connection     | ❌ Disconnects on IP change  | ✅ Stays connected across networks |
| Local echo                | ❌ Delayed input feedback    | ✅ Instant feedback                |
| Intermittent connection   | ❌ Connection drops          | ✅ Handles network loss smoothly   |
| Built-in encryption       | ✅ Yes                        | ✅ Yes (uses SSH to initiate)     |

---

## 📦 Installation

### On Ubuntu/Debian:
```bash
sudo apt update
sudo apt install mosh
```

## 🔐 How Mosh Works

### Mosh initially connects using SSH to authenticate.

- It then starts a UDP session on the server.

- Mosh client communicates over that UDP port, enabling reconnection and roaming without restarting the session.

- Make sure UDP ports (typically 60000-61000) are open on your server.

## 🔧 Usage
### Basic syntax:

```bash
mosh ubuntu@18.222.100.200
```

## ⚙️ Server-Side Setup (AWS EC2 Example)

Install Mosh on your EC2 instance:

```bash
sudo apt install mosh
```

