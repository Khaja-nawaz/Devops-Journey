# 1️⃣1️⃣ Day - 11, April 24, 2025
# 📚 Today's Linux Learning: APT Package Manager  
*A summary of key APT commands and concepts learned today.*  

![APT Logo](https://img.shields.io/badge/APT-Debian/Ubuntu-red?logo=debian&logoColor=white)  
![License](https://img.shields.io/badge/License-MIT-blue)  

---

## 📦 Table of Contents  
1. [Basic Commands](#-basic-commands)  
2. [System Maintenance](#-system-maintenance)  
3. [Troubleshooting](#-troubleshooting)  
4. [Advanced Usage](#-advanced-usage)  
5. [Example Workflows](#-example-workflows)  

---

## ✨ Basic Commands  
| Command | Description | Example |  
|---------|-------------|---------|  
| `apt update` | Refresh package lists | `sudo apt update` |  
| `apt install` | Install a package | `sudo apt install htop` |  
| `apt remove` | Remove a package | `sudo apt remove vlc` |  
| `apt search` | Search for packages | `apt search "web server"` |  
| `apt show` | Show package details | `apt show nginx` |  

---

## 🛠️ System Maintenance  
| Command | Description |  
|---------|-------------|  
| `apt upgrade` | Upgrade all packages |  
| `apt full-upgrade` | Upgrade with dependency handling |  
| `apt autoremove` | Remove unused packages |  
| `apt clean` | Clean downloaded package files |  

**Pro Tip:**  
```bash
# Update and upgrade in one line  
sudo apt update && sudo apt upgrade -y  
