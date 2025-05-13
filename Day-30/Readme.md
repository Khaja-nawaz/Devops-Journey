# ☁️ AWS Boto3 S3 Operations

This project demonstrates how to use **Boto3**, the AWS SDK for Python, to interact with **Amazon S3**. The key operations covered:

- Creating a bucket
- Uploading a file to the bucket
- Downloading a file from S3
- Putting raw data as an object in S3

---

## 📦 Prerequisites

- AWS account with appropriate S3 permissions (`s3:CreateBucket`, `s3:PutObject`, `s3:GetObject`)
- AWS CLI configured via `aws configure`
- Python environment with `boto3` installed:

```bash
pip install boto3
```

# 1️⃣ Create an S3 Bucket

```
import boto3

s3_client = boto3.client('s3')

response = s3_client.create_bucket(
    Bucket='your-unique-bucket-name-123',
    CreateBucketConfiguration={'LocationConstraint': 'ap-south-1'}
)

print("Bucket created:", response)
```
