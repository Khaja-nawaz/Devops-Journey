# 1️⃣3️⃣ Day -13, 26 - April 2025
# 📚 Today's Linux Learning: User Management & System Monitoring

![Linux Logo](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
![Bash](https://img.shields.io/badge/Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)

## 📋 Table of Contents
1. [User Management](#-user-management)
   - [useradd](#useradd---create-users)
   - [usermod](#usermod---modify-users)
   - [groups](#groups---check-group-memberships)
   - [sudo](#-sudo-privileges)
2. [System Monitoring](#-system-monitoring)
   - [df](#df---disk-space)
   - [free](#free---memory-usage)
   - [htop](#htop---process-monitoring)
3. [Cheat Sheet](#-cheat-sheet)
4. [Practice Exercises](#-practice-exercises)

---

## 👥 User Management

### `useradd` - Create Users
```bash
# Basic user creation
sudo useradd username

# Create user with home directory
sudo useradd -m username

# Create user with specific UID and shell
sudo useradd -u 1001 -s /bin/bash username

# Create user with description
sudo useradd -c "Developer Account" devuser

# Change username
sudo usermod -l newname oldname

# Add user to supplementary groups
sudo usermod -aG sudo,developers username

# Lock/Unlock account
sudo usermod -L username  # Lock
sudo usermod -U username  # Unlock

# Check your groups
groups

# Check another user's groups
groups username

# Detailed view
id username

# Check your groups
groups

# Check another user's groups
groups username

# Detailed view
id username

# Grant sudo access
sudo usermod -aG sudo username

# Run command as root
sudo command

# Edit sudoers file safely
sudo visudo


# Basic disk usage
df -h

# Show specific filesystem type
df -h -t ext4

# Show inodes instead of space
df -i


# Show memory in human-readable format
free -h

# Continuous monitoring (refresh every 2 sec)
free -h -s 2

# Install htop
sudo apt install htop

# Interactive process viewer
htop

# Key bindings:
# F2 - Setup
# F3 - Search
# F4 - Filter
# F9 - Kill process
# q - Quit
