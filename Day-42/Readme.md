# 🐧 Linux Power Commands & Utilities

This README documents a set of useful Linux commands and tools that go beyond the basics. These commands help with networking, file security, productivity, and more.

---

## 📡 1. `mtr` - Network Diagnostic Tool

**`mtr` (My Traceroute)** combines the functionality of `traceroute` and `ping` to provide real-time data on the route packets take to reach a host.

```bash
mtr google.com
```

- ✅ Shows each hop between your machine and the destination
- ✅ Includes packet loss, latency, and jitter info

## 📊 2. stat - File Metadata Info

Displays detailed information about files, including inode, access, modification time, and permissions.
```bash
stat filename.txt
```
✅ Useful for debugging file issues or checking timestamps

## 🐶 3. dog - Modern dig Alternative

A more readable version of dig, used for DNS lookups.
```bash
dog example.com
```

- ✅ Clean output format
- ✅ Shows A, AAAA, CNAME, MX records, and more
