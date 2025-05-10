# 🐧 Linux Shell Basics – Redirection, `tee`, and Shell Operators

## 📅 Date: May 10, 2025

This README documents basic but essential Linux shell concepts I practiced today.

# 🔄 Output Redirection

`>` – Redirect Standard Output (Overwrite)  
```bash
echo "Hello" > file.txt
```
# >> – Append to file
```bash
echo "World" >> file.txt
```
## Appends "World" to file.txt if it exists.

# Prevent Accidental File Overwrite

## Enable noclobber
```bash
set -o noclobber
echo "Test" > file.txt  # Will give warning if file exists
```
## Disable noclobber
```bash
set +o noclobber
echo "Now overwrite" > file.txt  # Overwrites allowed
```

# tee Command

## Write to file and display on terminal
```bash
echo "Log this" | tee log.txt
```

## Append to file with tee
```bash
echo "Append this" | tee -a log.txt
```

# Pipe Operator: |

## Send output from one command into another
```bash
ls -l | grep ".txt"
```

# w – Show Who is Logged In
```bash
w
```
##Displays current users, activity, and system load.

# Semicolon ; – Run Multiple Commands
```bash
echo "First"; echo "Second"
```
## Runs both commands one after the other regardless of success.



