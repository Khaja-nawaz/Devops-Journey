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

# 2️⃣ Upload a File to S3
```
import boto3

s3_client = boto3.client('s3')

with open("example.txt", "rb") as file_data:

    s3_client.put_object(
        Bucket='your-unique-bucket-name-123',
        Key='example.txt',
        Body=file_data
    )

print("File uploaded successfully.")
```

# 3️⃣ Download a File from S3
```
import boto3

s3_client = boto3.client('s3')

with open("downloaded_example.txt", "wb") as file_data:
    s3_client.download_fileobj(
        Bucket='your-unique-bucket-name-123',
        Key='example.txt',
        Fileobj=file_data
    )

print("File downloaded successfully.")
```

# 4️⃣ Put Raw Object Content into S3
```
import boto3

s3_client = boto3.client('s3')

s3_client.put_object(
    Bucket='your-unique-bucket-name-123',
    Key='raw-text.txt',
    Body='This is some raw string content being uploaded directly!'
)

print("Raw text uploaded successfully.")
```
