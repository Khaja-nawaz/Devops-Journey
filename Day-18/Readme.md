# 🐍 Basic OS Commands in Python

This repository documents my learning journey of using **Python's `os` module** to interact with the operating system.

---

##  – Exploring OS Module Capabilities

### ✅ What I Learned

- Listing available functions in the `os` module using `dir()`
- Changing directories with `os.chdir()`
- Creating and removing nested directories (`os.makedirs()` / `os.rmdirs()`)
- Renaming files using `os.rename()`
- Listing directory contents with `os.listdir()`
- Getting file modification time using `os.stat()`
- Converting timestamps to readable format with `datetime.fromtimestamp()`
- Traversing directories using `os.walk()`
- Checking if a path exists with `os.path.exists()`
- Splitting file paths using `os.path.splitext()`
- Exploring file path utilities using `dir(os.path)`

---

## 🧪 Code Highlights

```python
import os
from datetime import datetime

# View available methods in os
print(dir(os))

# Change current directory
os.chdir('D:\\devops-Journey\\Python(VS-code)\\OS-SubProcess')

# Create nested directories
os.makedirs('os1/os2/os3')

# Remove nested directories
os.rmdirs('os1/os2/os3')

# Rename a file
os.rename('p.txt', 'n.txt')

# List files in current directory
print(os.listdir())

# Get and print last modified time
mod_time = os.stat('n.txt').st_mtime
print(datetime.fromtimestamp(mod_time))

# Walk through directories and print structure
for dirpath, dirname, filenames in os.walk('D:'):
    print('CD:', dirpath)
    print('D:', dirname)
    print('F:', filenames)

# Check path existence
print(os.path.exists('n:'))

# Split file extension from path
print(os.path.splitext('tmp/txt.txt'))

# View os.path utilities
print(dir(os.path))

