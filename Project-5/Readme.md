# 🗂️ S3 Backup Automation Script

This is a Python automation project that takes a file or folder from your local system  and uploads it to an AWS S3 bucket every day at 11:05 PM. It also logs each upload with a timestamp for easy tracking.

Think of it as a **daily backup bot** for your local files to the cloud.

---

## 💡 What This Project Does

- You choose the file or folder you want to back up.
- Every time the script runs:

  1. It uploads that zip file to your specified **S3 bucket**.
  2. It writes a line in a log file like:  
     `2025-05-15 11:05:01 - Uploaded backup_2025-05-15.zip`

This way, even if your local machine crashes, your important data is safely stored in the cloud.

---

## 🔧 How It Works (Under the Hood)

- Uses **`boto3`** (AWS SDK for Python) to interact with S3
- Maintains a text-based log file (`backup_log.txt`)
- Runs daily at 3:00 PM using **Windows Task Scheduler**

---

## 📁 Real-World Use Case

Let’s say you’re working on a coding project for a client. You keep your files in:

```python
D:\devops-Journey\Project-5\
```
Now imagine one of these things happens:
* Your laptop crashes

* You accidentally delete a file

* Someone overwrites your code

With this automation:

* Every day at 11:05 AM, That zip file is uploaded to your AWS S3 bucket

* A log entry is saved so you know the backup happened

Finally 

This Will Make Sure that your script will get storeed in s3 Bucket Every Day at 11:05AM 
