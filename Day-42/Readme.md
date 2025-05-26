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

## 📐 4. ipcalc - IP/Subnet Calculator

Breaks down IP addresses and subnets in human-readable format.

```bash
ipcalc 192.168.1.0/24
```
- ✅ Shows network, broadcast, and host ranges
- ✅ Useful for VPC and networking configurations

## 🌐 5. wormhole - Secure File Transfer

Enables secure file transfer between two machines using a one-time code.
```bash 
wormhole send myfile.zip
```
- ✅ Cross-platform
- ✅ Peer-to-peer encrypted transfer using magic wormhole protocol

## 🔒 6. shred - Secure File Delete

Overwrites a file multiple times to securely delete it.

```bash
shred -u -z secret.txt
```
- ✅ Prevents file recovery
- ✅ -u: removes after shredding, -z: adds a final overwrite with zeros

## 🐳 7. lazydocker - Terminal Docker UI

A simple terminal UI for managing Docker containers and images.

```bash
lazydocker
```

- ✅ Monitor containers, logs, stats
- ✅ Lightweight and super convenient for developers

## 🕒 8. ts - Timestamp Output

Prefixes each line of output with a timestamp.
```bash
echo "Hello World" | ts
```
- ✅ Great for logging and debugging script outputs

## ✅ 9. taskwarrior - Command-line Task Manager

Powerful CLI task management tool for ToDos.
```bash
task add Finish DevOps notes due:tomorrow
task list
```
- ✅ Supports tagging, priorities, due dates
- ✅ Perfect for terminal-based productivity

## 📌 Summary Table

| Command       | Purpose                | Example Usage             |      |
| ------------- | ---------------------- | ------------------------- | ---- |
| `mtr`         | Network trace & ping   | `mtr google.com`          |      |
| `stat`        | File metadata          | `stat file.txt`           |      |
| `dog`         | DNS lookup tool        | `dog example.com`         |      |
| `ipcalc`      | IP subnet calculator   | `ipcalc 10.0.0.0/24`      |      |
| `wormhole`    | Secure file sharing    | `wormhole send file.zip`  |      |
| `shred`       | Secure file deletion   | `shred -u -z secrets.txt` |      |
| `lazydocker`  | Docker terminal UI     | `lazydocker`              |      |
| `ts`          | Timestamp output lines | \`cat log.txt             | ts\` |
| `taskwarrior` | CLI task manager       | `task add “todo item”`    |      |



