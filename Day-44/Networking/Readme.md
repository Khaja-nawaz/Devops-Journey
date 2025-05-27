# 🌐 Networking Basics

This README covers fundamental networking concepts including IP addresses, private IP standards, and essential port numbers.

---

## 🧠 What is an IP Address?

An **IP address (Internet Protocol Address)** is a unique identifier assigned to each device connected to a network.

### 🛠️ Key Roles:
- **Identifies Host and Network**: Distinguishes individual devices and the network they belong to.
- **Location Addressing**: Helps route data between devices on different networks.

---

## 📜 RFC1918 – Private IP Ranges

**RFC1918** defines the IP address ranges that are reserved for **private networks**, meaning they cannot be routed on the public Internet.

| Private IP Range        | Subnet Mask          | Class |
|-------------------------|----------------------|-------|
| 10.0.0.0 – 10.255.255.255 | 255.0.0.0 ( /8 )      | A     |
| 172.16.0.0 – 172.31.255.255 | 255.240.0.0 ( /12 )   | B     |
| 192.168.0.0 – 192.168.255.255 | 255.255.0.0 ( /16 ) | C     |

➡️ These are ideal for internal communication within an organization.

---

## 🔌 Common Port Numbers

| Port | Protocol | Usage Description                  |
|------|----------|------------------------------------|
| 22   | SSH      | Secure Shell – Remote terminal access |
| 53   | DNS      | Domain Name System – Resolves domains |
| 80   | HTTP     | Web traffic (unencrypted)          |
| 443  | HTTPS    | Secure web traffic                 |
| 3389 | RDP      | Remote Desktop Protocol (Windows)  |

---

## ⚠️ Why Not Use `192.168.x.x` in Corporate Networks?

While `192.168.x.x` is technically valid for private use, it is **commonly used in home networks** and small office routers. Using it in business environments may lead to:

- **IP Conflicts**: Especially when connecting remote employees who use `192.168.x.x` at home.
- **VPN Issues**: Overlapping IP ranges can break VPN routing or create security risks.
- **Poor Network Segmentation**: Less flexibility in large-scale subnetting or scaling.

✅ **Recommendation**: Use less common private IP ranges like `10.x.x.x` or `172.16.x.x` for better control and scalability in corporate setups.

---

## 📘 Summary

- IP addresses help identify and locate devices on networks.
- RFC1918 reserves specific IP ranges for private networking.
- Ports enable communication between services and applications.
- Avoid `192.168.x.x` in enterprise networks to prevent conflicts.



