# 📘 Python File Handling Exercise – `read_and_greet()`

## 🗓️ Date: May 8, 2025

---

## 🧩 Problem Statement

Develop a Python function that reads the first line from a file named `greet.txt` and prints a greeting message. The function should handle the following scenarios:

- If the file exists and contains content, print: `hello, <first_line>!`
- If the file exists but is empty, print: `File is empty`
- If the file does not exist, print: `error with file`
- Handle any other exceptions gracefully.

---

## ✅ Solution

```python
def read_and_greet():
    read = None
    try:
        read = open("greet.txt", 'r')
        first_line = read.readline()

        if first_line:
            print(f"hello, {first_line.strip()}!")
        else:
            print("File is empty")
    except FileNotFoundError:
        print("error with file")
    except Exception as e:
        print(f"error, file not found {e}")
    finally:
        if read is not None:
            read.close()

read_and_greet()

