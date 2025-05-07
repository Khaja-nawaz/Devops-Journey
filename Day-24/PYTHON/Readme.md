# 📘 Daily Learning Log – Python Nested Functions

## 🗓️ Date: May 7, 2025

---

## 🐍 Python Practice: Nested Functions for Circle Calculations

I explored nested functions in Python by creating a program to calculate the area and circumference of a circle.

### 📄 Code Example

```python
import math

def calculate():
    def area(radius):
        if radius < 0:
            return "Negative Num"
        return math.pi * (radius ** 2)

    def circumference(radius):
        if radius < 0:
            return "Negative Num"
        return 2 * math.pi * radius

    return area, circumference

ar_fn, cr_fn = calculate()
print(ar_fn(5))  # Output: 78.53981633974483
print(cr_fn(5))  # Output: 31.41592653589793

