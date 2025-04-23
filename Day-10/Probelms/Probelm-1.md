**Temperature Converter Module**

**Module-1**
def celsius_to_fahrenheit(c):
    f = (c*9/5) + 32
    return f
def fahrenheit_to_celsius(f):
    c = (f-32) * 5/9
    return c

**Module-2**
from mymodule import celsius_to_fahrenheit 
from mymodule import fahrenheit_to_celsius 

print(celsius_to_fahrenheit(37))
print(fahrenheit_to_celsius(98.6))
