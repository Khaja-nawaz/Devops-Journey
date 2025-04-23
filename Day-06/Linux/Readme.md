#6️⃣ Day - 6  📆 April 19, 2025
# File Permissions and Ownership in Linux (Learned April 19, 2025)

This README summarizes the `chmod`, `chown`, and `groupadd` commands I learned today, which are essential for managing file and directory permissions and ownership in Linux.

## `chmod`: Change Mode (Permissions)

The `chmod` command is used to modify the access permissions of files and directories, determining who can read, write, and execute them.

### Permission Categories:

* **u (user):** The owner of the file.
* **g (group):** The group associated with the file.
* **o (others):** All other users on the system.

### Permission Types:

* **r (read):** View file content or list directory contents.
* **w (write):** Modify file content or create/delete/rename files in a directory.
* **x (execute):** Run a file as a program or enter a directory.

### Modes of Operation:

1.  **Symbolic Mode:** Using letters and operators (+, -, =).
    * `chmod u+x script.sh` (Add execute permission for the owner)
    * `chmod g-w document.txt` (Remove write permission for the group)
    * `chmod u=rw,go=r report.pdf` (Set specific permissions)
    * `chmod a+r public_file.txt` (Add read permission for all)

2.  **Numeric Mode:** Using octal numbers (user-group-others).
    * `chmod 755 script.sh` (rwx for owner, rx for group and others)
    * `chmod 640 private.txt` (rw for owner, r for group, no permissions for others)

### Exercises:

1.  Create a file named `exercise1.txt` and give the owner read and write permissions, and no permissions for group and others.
    ```bash
    touch exercise1.txt
    chmod 600 exercise1.txt
    ```

2.  Create a script file named `exercise2.sh`. Initially, give the owner read and write permissions, and group and others only read. Then, make it executable for the owner.
    ```bash
    touch exercise2.sh
    chmod 644 exercise2.sh
    chmod u+x exercise2.sh
    ```

3.  Create a directory named `exercise3_dir`. Give the owner read, write, and execute permissions, and the group and others only read and execute permissions.
    ```bash
    mkdir exercise3_dir
    chmod 755 exercise3_dir
    ```

4.  Take the `exercise1.txt` file. Remove write permission for the owner.
    ```bash
    chmod u-w exercise1.txt
    ```

5.  Take the `exercise2.sh` script. Remove execute permission for the group and others.
    ```bash
    chmod go-x exercise2.sh
    ```

6.  Take the `exercise3_dir` directory. Remove write permission for the group.
    ```bash
    chmod g-w exercise3_dir
    ```

7.  Create a new file named `exercise4.txt` and set the permissions so that everyone can read it, but only the owner can write to it.
    ```bash
    touch exercise4.txt
    chmod 644 exercise4.txt
    ```

8.  Create a directory named `exercise5_dir` and set the permissions so that the owner has full read, write, and execute permissions, the group can read and execute, and others have no permissions.
    ```bash
    mkdir exercise5_dir
    chmod 750 exercise5_dir
    ```

## `chown`: Change Owner

The `chown` command is used to change the owner and/or the group associated with a file or directory. **Requires superuser privileges (`sudo`).**

### Syntax:

```bash
sudo chown [user][:group] file


## `chown` Exercises (Remember to use `sudo`):

1.  **Create a file named `owner_test.txt`. Change the owner of this file to the new user you created earlier (if you did). If not, pick another existing user on your system.**
    ```bash
    touch owner_test.txt
    sudo chown your_new_username owner_test.txt
    ```
    *(Replace `your_new_username` with the actual username)*

2.  **Create a directory named `group_test_dir`. Change the group ownership of this directory to a different group that exists on your system.**
    ```bash
    mkdir group_test_dir
    sudo chown :your_new_group group_test_dir
    ```
    *(Replace `your_new_group` with an existing group name. You can see available groups using the `groups` command or by examining the `/etc/group` file.)*

3.  **Create a file named `both_test.txt`. Change both the owner and the group of this file in one command.**
    ```bash
    touch both_test.txt
    sudo chown your_new_username:your_new_group both_test.txt
    ```
    *(Replace `your_new_username` and `your_new_group` with the desired user and group.)*

4.  **Create a directory named `recursive_test_dir` and create a few files inside it (and maybe a subdirectory with files). Change the owner of the `recursive_test_dir` to a different user, applying the change recursively to all files and subdirectories within it.**
    ```bash
    mkdir -p recursive_test_dir/subdir
    touch recursive_test_dir/file1.txt recursive_test_dir/subdir/file2.txt
    sudo chown -R your_new_username recursive_test_dir
    ```
    *(Replace `your_new_username` with the desired user.)*

## Key Takeaways:

* ** I focused on understanding and practicing the following Linux commands:

* **`chmod`:** Learned to modify file and directory permissions using both symbolic (e.g., `u+x`, `go-w`) and numeric (octal) modes (e.g., `755`, `640`).
* **`chown`:** Understood how to change the owner and group of files and directories, remembering the need for `sudo` and the `-R` option for recursive changes.
* **`groupadd`:** Learned to create new user groups using this administrative command.

Through hands-on exercises, I applied these commands to manage access control, which is a crucial aspect of Linux system administration and security.
