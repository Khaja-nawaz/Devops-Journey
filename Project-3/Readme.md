# 📉 AWS Cloud Cost Optimization – Identifying Stale Resources

## 🔍 Identifying Stale EBS Snapshots

In this example, we'll create a **Lambda function** that identifies **EBS snapshots** that are no longer associated with any active **EC2 instance** and deletes them to save on storage costs.

---

## 📝 Description

The Lambda function:
- Fetches all EBS snapshots owned by the same account (`self`)
- Retrieves a list of active EC2 instances (both **running** and **stopped**)
- For each snapshot:
  - Checks if the associated volume (if it exists) is linked to any active EC2 instance
  - If the snapshot is **stale** (not associated with any active volume/instance), it **deletes** it

This effectively helps in **reducing unnecessary storage costs** by cleaning up unused EBS snapshots.

---

