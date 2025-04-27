# Python File Handling Guide

![Python](https://img.shields.io/badge/Python-3.x-blue?logo=python&logoColor=white)

A comprehensive guide to file handling operations in Python.

## 📌 Core Concepts

### File Basics
- **File**: Named location on storage containing data
- **File Path**: Can be relative or absolute
- **File Object**: Returned by `open()`, used to interact with files

### File Modes
| Mode | Description |
|------|-------------|
| `'r'` | Read (default) |
| `'w'` | Write (overwrites) |
| `'a'` | Append |
| `'b'` | Binary mode |
| `'x'` | Exclusive creation |
| `'t'` | Text mode (default) |
| `'+'` | Read/write |

## 📂 File Operations

### Opening Files
```python
file_object = open(file_path, mode)

# Read entire file
with open('file.txt', 'r') as f:
    content = f.read()

# Read line by line
with open('file.txt', 'r') as f:
    for line in f:
        print(line.strip())

# Write to file
with open('file.txt', 'w') as f:
    f.write("Hello World\n")
    
# Write multiple lines
lines = ["Line 1\n", "Line 2\n"]
with open('file.txt', 'w') as f:
    f.writelines(lines)

with open('file.txt', 'r+') as f:
    print(f.tell())  # Current position
    f.seek(10)       # Move to 10th byte
    print(f.read(5)) # Read 5 bytes from position

try:
    with open('missing.txt', 'r') as f:
        content = f.read()
except FileNotFoundError:
    print("File not found!")
except IOError as e:
    print(f"Error: {e}")

try:
    with open('missing.txt', 'r') as f:
        content = f.read()
except FileNotFoundError:
    print("File not found!")
except IOError as e:
    print(f"Error: {e}")
