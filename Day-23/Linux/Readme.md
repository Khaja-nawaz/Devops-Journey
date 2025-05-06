# 📘 Learning Log –  Linux Sudo

This repository documents my recent learning progress in:

- **Linux passwordless sudo configuration**

---

## 🛡️ Linux Passwordless Sudo Configuration

I configured a Linux user to use `sudo` **without entering a password**.

### ✅ Steps to Enable Passwordless Sudo

1. Open the sudoers file with safe syntax checking:
   ```bash
   sudo visudo
2. Add the following line
   ```bash
    your_username ALL=(ALL) NOPASSWD:ALL

3. Now Run the Command Check the Results 
