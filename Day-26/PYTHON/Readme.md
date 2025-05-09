# 🧮 Python CLI Calculator

## 📅 Date: May 9, 2025

---

## 📌 Overview

This command-line calculator performs basic arithmetic operations—addition, subtraction, multiplication, and division—between two user-provided integers. It incorporates robust input validation and exception handling to ensure smooth user interaction and prevent runtime errors.

---

## 🧠 Features

- **Arithmetic Operations**: Supports addition (`+`), subtraction (`-`), multiplication (`*`), and division (`/`).
- **Input Validation**: Ensures that users input valid integers and select appropriate operations.
- **Exception Handling**: Manages errors such as invalid inputs and division by zero gracefully.
- **Modular Design**: Utilizes separate functions for each operation and input handling for clarity and maintainability.

---

## 🧾 Code Structure

### 1. Arithmetic Functions

```python
def add(num1, num2):
    return num1 + num2

def subtract(num1 , num2):
    return num1 - num2

def multiply(num1, num2):
    return num1 * num2

def divide(num1, num2):
    return num1 / num2

def numbers():
    while True:
        try:
            num1_str = input("Enter the first number: ")
            num1 = int(num1_str)
            num2_str = input("Enter the second number: ")
            num2 = int(num2_str)
            return num1, num2
        except ValueError:
            print("Invalid input. Please enter whole numbers only.")

def get_operation():
    while True:
        operation = input("Enter the operation (+, -, *, /): ")
        if operation in ['+', '-', '*', '/']:
            return operation
        else:
            print("Invalid operation. Please choose from +, -, *, /.")

def calculator():
    num1, num2 = numbers()
    operation = get_operation()

    try:
        if operation == '+':
            result = add(num1, num2)
            print(f"{num1} + {num2} = {result}")
        elif operation == '-':
            result = subtract(num1, num2)
            print(f"{num1} - {num2} = {result}")
        elif operation == '*':
            result = multiply(num1, num2)
            print(f"{num1} * {num2} = {result}")
        elif operation == '/':
            result = divide(num1, num2)
            print(f"{num1} / {num2} = {result}")
    except ZeroDivisionError as e:
        print(f"Error: {e}")

if __name__ == "__main__":
    calculator()
m

