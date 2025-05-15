import boto3 #importing Boto3 Module
from datetime import datetime

s3 = boto3.client('s3') # Creating low Level Services Client in a s3 variable 

file_path = r"D:\devops-Journey\Project-5\Upload-file.rar" # Creating a Variable and giving our file location

s3_bucket_name = 'my-project-5-s3-bucket' # S3 Bucket Name 

base_object_name = 'backup.zip' # So we are giving a base name to it , so when its getting saved in s3 the name will be "backup.zip"

#time stamp code starts from here

timestamp = datetime.now().strftime('%Y-%m-%d_%H-%M')
s3_object_name = 'backup_'+ timestamp +'.zip'
print(s3_object_name)

#Time Stamp Code is Over From here


#using try and Except in Upload file
try:
    s3.upload_file(file_path, s3_bucket_name, s3_object_name)
    print(f"✅ Backup uploaded Sucessfully as : {s3_object_name}")
except Exception as e:
    print(f"❌Upload Failed {e}")

# Writing a Log file in a specific Path
log_path = r'D:\devops-Journey\Project-5\Log-Folder\log_file.txt'

with open(log_path, 'a') as log:
    log.write(f"{datetime.now()} - Uploaded {s3_object_name}\n")

