# 🐍 Basic OS Commands in Python

This mini project demonstrates the use of basic **Operating System (OS) commands** in Python using the `os` and `shutil` modules.

## 📚 What I Learned

- Working with the current working directory
- Listing files and folders in a directory
- Creating a new folder (with `exist_ok=True`)
- Removing folders
- Moving files/folders to a different location
- Deleting files safely using error handling

## 🧪 Code Highlights

```python
import os 
import shutil
import sys

# Get current working directory
pwd  = os.getcwd()
print(f"Current Directory is: {pwd}")

# List contents in current directory
list_dir = os.listdir("./")
print(f"Listing: {list_dir}")

# Create a new folder
# os.makedirs("Job is Not finish", exist_ok=True)

# Remove a folder
# os.rmdir("D:\\devops-Journey\\Python(VS-code)\\Job is Not finish")

# Move folder to a new location
# shutil.move("D:\\devops-Journey\\Python(VS-code)\\Job is Not finish", "D:\\ m")

# Delete a file with exception handling
def delete_file(file_path):
    try:
        os.remove(file_path)
    except FileNotFoundError:
        print(f"File not found: '{file_path}'")
    except Exception as e:
        print(f"Error deleting file: {e}")

delete_file("D:\\ m\\Job is Not finish")

