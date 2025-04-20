# 7️⃣ Day- 7 📆April 20, 2025
# My AWS S3 Learning Journey - 

Today, I embarked on a journey to understand the fundamentals of Amazon Simple Storage Service (S3), a highly scalable and durable object storage service in the cloud. Here's a summary of what I learned:

## Core Concepts

* **S3 Bucket:** I successfully created my first S3 bucket, which I now understand is like a magical online locker where I can store my digital files (objects). Bucket names are globally unique.
* **Objects:** These are the files I store in my S3 bucket. Each object has a key (its name and optional prefix/folder structure) and can have associated metadata.

## Hands-on Activities

* **Uploading Objects:** I learned how to upload files (objects) to my S3 bucket using the AWS Management Console. This involved navigating to my bucket and using the "Upload" button to select files from my local computer.
* **Downloading Objects:** I also successfully downloaded an object from my S3 bucket back to my computer using the AWS Management Console. This involved selecting the object and clicking the "Download" button.
* **Managing Permissions:**
    * I explored how permissions work in S3 at both the bucket and object levels.
    * I discovered that my bucket was configured with **"Bucket owner enforced"** for Object Ownership, which disables Access Control Lists (ACLs) for individual objects.
    * I learned about **Bucket Policies**, which are JSON documents that define rules for access to the entire bucket and its contents.
    * I successfully created and applied a Bucket Policy to make all objects in my bucket publicly readable (and then removed it to revert to private access).
* **Organizing Your Bucket:**
    * I learned about using **prefixes** to organize objects within a bucket. Prefixes act like virtual folders in the S3 console.
    * I created a prefix (a "folder") in my bucket using the AWS Management Console.
    * I uploaded a file directly into this new prefix.
    * I understood that the **object key** is the full path and filename of an object, including any prefixes.
* **Understanding Storage Classes:** I got an overview of the different S3 storage classes, each optimized for different access patterns and cost considerations. These include S3 Standard, S3 Intelligent-Tiering, S3 Standard-IA, S3 One Zone-IA, and the Glacier storage options.
* **Basic Cost Management:** I learned about the key factors that contribute to S3 costs, such as storage, data transfer (in and out), requests, data retrieval (for infrequent access tiers), and early deletion fees. I also learned about tools like AWS Cost Explorer and AWS Budgets for monitoring costs.

## Next Steps

I plan to continue my learning by exploring:

* More advanced permission configurations using Bucket Policies and IAM Roles.
* Implementing S3 Lifecycle rules for automatic data management and cost optimization.
* Diving deeper into the specifics of each S3 storage class and their use cases.
* Exploring other ways to interact with S3, such as the AWS Command Line Interface (CLI) and SDKs.

This has been a productive introduction to AWS S3, and I'm excited to continue building my knowledge!
