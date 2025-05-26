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

