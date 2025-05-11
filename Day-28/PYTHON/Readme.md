# 🐍 Python Boto3 Basics – May 10, 2025

Today I explored the basics of **AWS Boto3** in Python. I focused on working with **Amazon S3** and understanding how to programmatically interact with buckets.

---

## 📖 What I Learned

- Read official [Boto3 documentation](https://boto3.amazonaws.com/v1/documentation/api/latest/index.html) on how to:
  - Create and delete S3 buckets
  - Download objects from S3
- Understood how `boto3.client()` works
- Learned the structure of basic S3 API calls

---

## 🧪 Code Practiced

```python
import boto3

# Initialize an S3 client
client = boto3.client('s3')

# --- To create a bucket (commented out for safety) ---
# response = client.create_bucket(
#     Bucket='nawaz-boto3-lessons',
# )

# --- To delete a bucket ---
response = client.delete_bucket(
    Bucket='nawaz-boto3-lessons',
)

