# 1️⃣1️⃣ Day - 11, April 24, 2025

![Python Logo](https://img.shields.io/badge/Python-3.x-blue?logo=python&logoColor=white)

## 📚 Today's Learning Objectives

### 1. Error Handling in Python
- Mastered `try-except-else-finally` blocks
- Implemented custom exception classes
- Practiced proper exception hierarchy

## 🛠 Code Samples

### Error Handling Implementation
#1.```python
class InvalidDataError(Exception):
    """Custom exception for data validation"""
    pass

def process_data(data):
    try:
        if not data:
            raise InvalidDataError("Empty dataset received")
    except InvalidDataError as e:
        logger.error(f"Validation failed: {e}")
        return False
    else:
        logger.info("Data processed successfully")
        return True
# 2.
def ATM(Amount, balance):
    if Amount > balance:
        raise ValueError("Insufficient Funds")
    return balance - Amount
try:
    ATM(1000, 5000)
except ValueError as e:
    print(f"Error : {e}")
else:
    print(f"Amount withdrawn Successfully")
    
