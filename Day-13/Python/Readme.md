#1️⃣3️⃣ Day- 13,  26 April - 2025
# 📂 Python File Handling Guide And Some Pattern

A comprehensive guide to file operations in Python, covering reading, writing, and advanced file manipulatio
## 📌 What I Learned (Yesterday)
- **File Modes**: `'r'` (read), `'w'` (write), `'a'` (append), `'x'` (create), `'b'` (binary)
- **Reading Files**: `read()`, `readline()`, `readlines()`
- **Writing Files**: `write()`, `writelines()`
- **Best Practices**: Using `with` blocks for auto-closing files
- **CSV/JSON Handling**: `csv` and `json` modules
- **OS Operations**: `os.rename()`, `os.remove()`, `os.path.exists()`

---

## 🚀 Quick Examples

### 📖 Reading a File
```python
with open("example.txt", "r") as file:
    content = file.read()
    print(content)

## Writing to a File
with open("example.txt", "w") as file:
    file.write("Hello, Python!")


##Patterns

## Pattern - 1
  1
 2 2
3 3 3
 2 2
  1

input_num = int(input("Enter the Number to be in Pattern "))
middle = input_num // 2 + 1

# Top half
for i in range(1, middle + 1):
    for s in range(middle - i):
        print(" ", end="")
    for j in range(i):
        print(i, end=" ")
    print()

# Bottom half
for i in range(middle + 1, input_num + 1):
    decrease_val = input_num - i + 1
    for s in range(i - middle):  # Fixed indentation
        print(" ", end="")
    for j in range(decrease_val):  # Fixed indentation
        print(decrease_val, end=" ")
    print()  # Moved inside the loop

## Pattern - 2


1
0 1
0 1 0
0 1 0 1
0 1 0 1 0

input_num = int(input("Enter the Number to be in Pattern "))
start = 1
for i in range(1, input_num+1):
    if (i%2 ==1):
        start = 1
    else:
        start = 0
    for j in range(i):
        print(start, end=" ")
        start = 1 - start
    print()
