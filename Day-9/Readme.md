# 9️⃣ Day - 9 April 22, 2025
# Python Functions Learning Journey

This document summarizes what I've learned about functions in Python.

## Core Concepts

* **Defining Functions:** Learned how to create reusable blocks of code using the `def` keyword, followed by the function name, parentheses for parameters, and a colon. The indented block of code after the colon contains the function's instructions.
    ```python
    def greet():
      print("Hello!")
    ```
* **Calling Functions:** Understood how to execute a function by using its name followed by parentheses.
    ```python
    greet()
    ```
* **Parameters:** Explored how to pass information into functions through parameters defined within the parentheses during function definition.
    ```python
    def greet(name):
      print(f"Hello, {name}!")

    greet("Alice")
    ```
* **Arguments:** Learned that when calling a function, the actual values passed to the parameters are called arguments.
* **Return Values:** Discovered how functions can send information back to the caller using the `return` statement.
    ```python
    def square(number):
      return number * number

    result = square(5)
    print(result) # Output: 25
    ```

## Advanced Function Concepts

* **Default Argument Values:** Learned how to specify default values for parameters, allowing functions to be called without providing a value for those parameters.
    ```python
    def greet(name, greeting="Hello"):
      print(f"{greeting}, {name}!")

    greet("Bob") # Uses the default greeting "Hello"
    greet("Alice", "Good morning") # Overrides the default greeting
    ```
* **Keyword Arguments:** Understood how to call functions using parameter names as keywords, making the order of arguments less important and improving readability.
    ```python
    def describe_pet(animal_type, pet_name):
      print(f"I have a {animal_type} named {pet_name}.")

    describe_pet(pet_name="Whiskers", animal_type="cat")
    ```
* **Variable Length Arguments (`*args`):** Learned how to create functions that can accept any number of positional arguments. These arguments are collected into a tuple.
    ```python
    def sum_all(*args):
      total = 0
      for num in args:
        total += num
      return total

    print(sum_all(1, 2, 3)) # Output: 6
    ```
* **Variable Length Keyword Arguments (`**kwargs`):** Explored how to create functions that can accept any number of keyword arguments. These arguments are collected into a dictionary.
    ```python
    def print_info(**kwargs):
      for key, value in kwargs.items():
        print(f"{key}: {value}")

    print_info(name="Alice", age=30)
    ```
* **Docstrings:** Learned the importance of documenting functions using docstrings (triple quotes). These explain what the function does, its arguments, and what it returns.
    ```python
    def add(x, y):
      """Adds two numbers together.

      Args:
        x: The first number.
        y: The second number.

      Returns:
        The sum of x and y.
      """
      return x + y
    ```

## Practice

I've practiced defining and calling various functions, including those with parameters, return values, and variable arguments. I also learned how to write clear and informative docstrings.

## Next Steps

I plan to continue learning about more advanced function concepts like scope, lambda functions, and decorators.

---
