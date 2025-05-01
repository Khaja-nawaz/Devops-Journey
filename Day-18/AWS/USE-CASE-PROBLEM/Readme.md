# 💸 AWS EC2 Cost Optimization for Dev Environments

Automate cost savings for a development EC2 instance by running it only **8 hours/day, 22 days/month**, and choosing the optimal **Stop, Terminate, or Hibernate** strategy.

---

## 📌 Problem Statement

- **Current Dev Environment Setup**:
  - EC2 instance runs **8 hours/day**, **22 days/month** → **176 hours/month**
  - Running 24/7 would cost approximately **$26/month** (for `t3.medium` + EBS)

- **Goal**: Minimize costs **without affecting developer productivity**

---

## 🛠️ Solution Comparison

| Method                | Estimated Monthly Cost | Data Persistence | Restart Time | Best Suited For                         |
|-----------------------|------------------------|------------------|--------------|------------------------------------------|
| **Scheduled Stop/Start** | ~$8.70 (EC2) + EBS       | ✅ Yes           | 1–2 mins     | General dev environments (balanced)      |
| **Terminate + Rebuild**  | ~$0 (when off)           | ❌ No            | 3–5 mins*    | Stateless or fully automated setups      |
| **Hibernate**            | ~$8.70 + extra EBS       | ✅ Yes (incl. RAM) | 2–3 mins     | Use cases needing RAM state (e.g. debugging sessions) |

> \*Assumes automation via AMIs or User Data scripts

---

## ✅ Recommended Approach: **Scheduled Stop/Start**

### Why This Works:
- **Retains data** (EBS persists)
- **76% cheaper** than always-on usage
- **No special configuration** required (supported on most instance types)

---

## 🧠 Real-World Insight

This exercise helped me recognize a **practical cost-saving strategy** often overlooked in dev/test environments. Automating lifecycle management for cloud resources is key to operational efficiency—especially at scale.

---

## 📌 Next Steps

- Automate stop/start with **EventBridge + Lambda** or **AWS Instance Scheduler**
- Consider **Spot Instances** or **Savings Plans** for additional savings if usage patterns are predictable

