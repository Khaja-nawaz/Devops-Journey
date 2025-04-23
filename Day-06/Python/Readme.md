# What I Learned Today: Python Loops

Okay, so today was all about **loops** in Python. These are super handy for making the computer do stuff over and over without having to write a million lines of code.

## Core Concepts

Basically, there are two main ways to loop in Python:

* **`for` Loops:** Think of these as going through a list of things, one by one. Like checking each item in your backpack. You use `for` when you know you have a bunch of stuff to process.

    ```python
    for item in sequence:
        # Do something with each 'item'
    ```

* **`while` Loops:** These are more like saying, "Keep doing this *as long as* this is true." Like, keep stirring the pot *while* it's not boiling. You use `while` when you don't know exactly how many times you need to repeat, just until a condition changes.

    ```python
    while condition:
        # Keep doing this
        # Make sure the condition eventually becomes false!
    ```

* Then there's `range()`, which is really useful with `for` loops for counting. Like `range(1, 11)` gives you numbers from 1 to 10.

* Oh, and `break` is like an emergency stop for a loop. If something happens, you can just jump out.

* Funny thing, `for` loops can even have an `else` at the end! It runs if the loop finishes normally, without a `break`.

## Practice Exercises and Concepts Covered

So, I did a bunch of little exercises to get the hang of this:

1.  **Counting with `for`:** Just printing numbers 1 to 10. Easy peasy.

    ```python
    for i in range(1, 11):
        print(i)
    ```

2.  **Printing Even Numbers:** Figuring out how to only print the evens up to 20. Used that step thing in `range()`.

    ```python
    for i in range(0, 21, 2):
        print(i)
    ```

3.  **Sum of Numbers:** Adding up all the numbers from 1 to 100. Had to keep a running total.

    ```python
    counter = 0
    for i in range(0, 101):
        counter = counter + i
    print(counter)
    ```

4.  **Greeting Multiple Times:** Just saying hello to a name five times using a loop.

    ```python
    name = input("Enter Your Name: ")
    for i in range(5):
        print(f"Hello {name}!")
    ```

5.  **Counting Down with `while`:** Making a countdown from 10 to 1. Had to decrease the counter in the loop.

    ```python
    count = 10
    while count > 0:
        print(count)
        count -= 1
    ```

6.  **Repeating User Input:** Kept asking for input until I typed "exit". That `while` loop was perfect for this.

    ```python
    enter = ''
    while enter != "exit":
        enter = input("Enter something ('exit' to quit): ")
        if enter == "exit":
            print("Exiting...")
        else:
            print(f"You entered: {enter}")
    ```

7.  **Simple Multiplication Table:** Made a little program to print the times table for a number.

    ```python
    number = int(input("Enter a number: "))
    for i in range(1, 11):
        product = number * i
        print(f"{number} x {i} = {product}")
    ```

8.  **Finding a Number in a List:** Wrote some code to see if a number I typed was in a short list. Used `break` when I found it.

    ```python
    find = int(input("Enter a number to find: "))
    sets = [1, 2, 3, 4, 5]
    found = False
    for i in sets:
        if find == i:
            print("Found it")
            found = True
            break
    if not found:
        print("Not Found")
    ```

9.  **Prime Number Checker (Single Number):** Tried to figure out if a number was prime by checking for divisors. That `else` with the `for` loop was kinda neat.

    ```python
    enter = int(input("Enter a number: "))
    for i in range(2, enter):
        if enter % i == 0:
            print(f"{enter} is not a prime number.")
            break
    else:
        print(f"{enter} is a prime number.")
    ```

10. **Prime Number Checker up to a Limit:** This one was a bit trickier, had to loop through a range and then loop again inside to check for primes.

    ```python
    limit = int(input("Enter a positive integer limit: "))
    for number in range(2, limit + 1):
        is_prime = True
        for i in range(2, int(number**0.5) + 1):
            if number % i == 0:
                is_prime = False
                break
        if is_prime:
            print(number)
    ```

## Next Steps

Gonna keep playing around with loops, maybe try some nested ones to do more complex stuff. Also want to see how loops work with different kinds of data, like strings and lists more. Getting there!
