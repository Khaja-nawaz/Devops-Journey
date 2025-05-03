# ☁️ AWS CloudWatch – Basics

This repository contains notes and examples from my learning of **Amazon CloudWatch**, a monitoring and observability service for AWS resources and applications.

---

## 📌 What I Learned

### 🔍 What is CloudWatch?

- **CloudWatch** collects **metrics**, **logs**, and **events** from AWS services and resources.
- It helps with **monitoring**, **visualization**, **alerting**, and **troubleshooting**.

---

## 🔧 Key Concepts

| Feature           | Description                                                   |
|------------------|---------------------------------------------------------------|
| **Metrics**       | Numeric data points from AWS resources (CPU, memory, etc.)    |
| **Alarms**        | Alerts triggered when a metric crosses a threshold            |
| **Logs**          | Store and analyze logs from EC2, Lambda, etc.                 |
| **Dashboards**    | Custom visualizations using CloudWatch metrics and widgets    |
| **Events**        | Respond to state changes (e.g., EC2 start/stop) with rules    |
| **Insights**      | Query logs interactively for troubleshooting and analytics     |

---

## ✅ Hands-On Practice

### ✅ What I Tried

- Viewed built-in **EC2 metrics** (CPUUtilization, NetworkIn/Out)
- Created a **CloudWatch Alarm** for CPU usage
- Enabled **detailed monitoring** on EC2
- Explored **Log Groups** and **Log Streams**
- Navigated CloudWatch **Dashboards** to visualize metrics

---

## 🧠 Why It Matters

CloudWatch is essential for:
- **Monitoring system health**
- **Setting up alerts and notifications**
- **Automating responses to infrastructure events**
- **Optimizing performance and cost**

---

## 🚀 Next Steps

- Set up custom metrics using **PutMetricData**
- Use **CloudWatch Logs Agent** on EC2
- Explore **CloudWatch Synthetics** and **Application Insights**
- Automate alarms with **CloudFormation** or **Terraform**


