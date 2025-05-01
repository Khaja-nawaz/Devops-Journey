# AWS EC2 Cost Optimization for Dev Environments

Automate cost savings for a development EC2 instance running **8 hours/day, 22 days/month** by choosing the best stop/terminate/hibernate strategy.

## 📌 Problem Statement
- **Current Setup**: 
  - EC2 instance runs **8 hours/day, 22 days/month** (176 hours/month).
  - Default 24/7 operation would cost **~$26/month** (for `t3.medium` + EBS).
- **Goal**: Reduce costs while maintaining developer productivity.

## 🛠 Solutions Compared

| Method       | Cost (Monthly) | Data Persistence | Restart Time  | Best For                          |
|--------------|---------------|------------------|---------------|-----------------------------------|
| **Scheduled Stop/Start** | ~$8.70 (EC2) + EBS | ✅ Yes          | 1-2 mins      | Most dev environments (balanced)  |
| **Terminate + Rebuild**  | ~$0 (when off)    | ❌ No           | 3-5 mins*     | Stateless/fully automated setups  |
| **Hibernate**           | ~$8.70 + extra EBS | ✅ Yes (RAM)    | 2-3 mins      | Saving RAM state (debug sessions) |

*\*With automation (AMI/User Data)*

## ⚡ Recommended Solution: **Scheduled Stop/Start**
### Why?
- Retains EBS volumes (no data loss)
- 76% cheaper than 24/7 operation
- No special instance requirements

