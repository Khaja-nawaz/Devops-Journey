# 1️⃣2️⃣ Day -12, April 25,2025
# Python Pattern Printing Learning

## Description

This repository is dedicated to learning and practicing pattern printing using Python. Pattern printing is a great way to improve your understanding of loops, control flow, and basic programming logic.  It's a common exercise for beginners and helps build a foundation for more complex programming tasks.  This README, along with the code in this repository, will guide you through various pattern examples.
## Rules to solve Pattern
## Four Rules

- for the outer loop, count the No-of Lines
- for the inner Loops, Focus On the Columns and connect them somehow to the rows
- Always print inside the inner loop
- Observe Symmetry
- 
## Probelm Solved


#1.
input_num = int(input("Enter the Number to be in Pattern"))
for i in range(input_num):
    for j in range(input_num):
        print(f"{i }")
    print()
    """
****
****
****
****
"""


input_num = int(input("Enter the Number to be in Pattern"))
for i in range(input_num):
    for j in range(1, i+2):
        print(j, end="")
    print()

    1
    12
    123
    1234
    12345
"""
input_num = int(input("Enter the Number to be in Pattern"))
for i in range(input_num):
    for j in range(1, i+1):
        print(i, end="")
    print()
    

    1
    22
    333
    4444
    55555
"""

input_num = int(input("Enter the Number to be in Pattern"))
for i in range(input_num):
    for j in range(input_num-i):
        print("*", end="")
    print()



"""
*****
****
***
**
*
"""

input_num = int(input("Enter the Number to be in Pattern"))
for i in range(input_num):
    for j in range(1, input_num-i+1):
        print(j, end="")
    print()


"""
12345
1234
123
12
1
"""
