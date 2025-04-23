# WSL Temp File Cleaner 🧹

A lightweight bash script to automatically clean temporary files in Windows Subsystem for Linux (WSL).

![Bash](https://img.shields.io/badge/-Bash-4EAA25?logo=gnu-bash&logoColor=white)
![WSL](https://img.shields.io/badge/-WSL-0078D6?logo=windows&logoColor=white)
![Cron](https://img.shields.io/badge/-Cron-003B57)

## Features ✨

- 🗑️ Cleans old files from:
  - `/tmp` (system temp files)
  - `~/.cache` (user cache)
- 📝 Logs all actions to `~/temp_cleaner.log`
- ⏰ Automatic daily runs via cron scheduler
- 🔒 Safe deletion (only removes files older than 7 days)

## Installation 🛠️

### Quick Start
```bash
# Download the script
curl -O https://raw.githubusercontent.com/yourusername/wsl-temp-cleaner/main/temp_cleaner.sh

# Make it executable
chmod +x temp_cleaner.sh

# Run manually
./temp_cleaner.sh
