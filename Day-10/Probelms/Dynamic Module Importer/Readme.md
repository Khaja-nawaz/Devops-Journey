import importlib

user = input("Enter the name of the module you want to import: ")

try:    
    # Dynamically import the module using importlib
    module = importlib.import_module(user)

except ImportError:
    print(f"Module '{user}' not found. Please check the module name and try again.")
except Exception as e:
    print(f"An error occurred: {e}")
else:
    # If the import is successful, you can use the module as needed
    print(f"Module '{user}' imported successfully!")
    # Example: Call a function from the imported module if it exists
    if hasattr(module, 'some_function'):
        module.some_function()
    else:
        print(f"The module '{user}' does not have a function named 'some_function'.")
