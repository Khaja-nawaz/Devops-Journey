# Python Modules Learning Journey
🔟 Day -10 
📅 **Date**: [April 23,2025]    

## Today's Learning Objectives Achieved

### 1. Core Concepts Mastered
- **Module Creation**: Built reusable Python modules (`temperature.py`, `password_checker.py`)
- **Package Structure**: Created proper package hierarchy with `math_ops/`
- **Dynamic Imports**: Used `importlib.import_module()` for runtime imports
- **Error Handling**: Implemented try-except blocks for robust imports
- **Documentation**: Added docstrings and clear function annotations

### 2. Key Technical Skills
```python
# Module structure
math_ops/
├── __init__.py
├── basic.py      # add(), subtract()
├── advanced.py   # power(), factorial()
└── stats.py      # mean(), median()


# Python Module Challenges 🐍


## Challenge 1: Temperature Converter Module

### 🎯 Objective
Create a module that converts between Celsius and Fahrenheit.

### 📝 Requirements
1. Create `temperature.py` with:
   - `celsius_to_fahrenheit(c)` function
   - `fahrenheit_to_celsius(f)` function
2. Formulas:
   - `F = (C × 9/5) + 32`
   - `C = (F - 32) × 5/9`
3. Test with 37°C → Fahrenheit and 98.6°F → Celsius

### � Expected Difficulties
- Floating-point precision handling
- Clean module interface design

---

## Challenge 2: Math Operations Package

### 🎯 Objective
Build a reusable math package with separated functionality.

### 📝 Requirements
1. Package structure:
2. Implement all functions with proper docstrings
3. Write test cases in `main.py` outside the package

### 🚨 Edge Cases to Handle
- Empty lists for mean/median
- Negative factorial inputs
- Proper package imports

---

## Challenge 3: Dynamic Module Importer

### 🎯 Objective
Create a script that dynamically imports and explores modules.

### 📝 Requirements
1. Accept user input for module name
2. Use `importlib.import_module()`
3. For valid modules:
- List available functions with `dir()`
- Allow executing functions with arguments
4. Handle:
- Invalid module names
- Missing functions
- Argument type conversion
