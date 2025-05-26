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
