# 🐧 Linux Shell Basics – Redirection, `tee`, and Shell Operators

## 📅 Date: May 10, 2025

This README documents basic but essential Linux shell concepts I practiced today.

# 🔄 Output Redirection

`>` – Redirect Standard Output (Overwrite)  
```bash
echo "Hello" > file.txt
```
# >> – Append to file
```bash
echo "World" >> file.txt
```
## Appends "World" to file.txt if it exists.

# Prevent Accidental File Overwrite
# Enable noclobber
```bash
set -o noclobber
echo "Test" > file.txt  # Will give warning if file exists
```
