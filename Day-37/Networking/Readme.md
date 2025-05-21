# 🌐 AWS Networking – VPC, Subnets, Route Tables, and Internet Gateway

## This document explains the foundational networking components in AWS with a specific example of CIDR calculations and subnetting logic.

## 📦 VPC Basics

- VPC (Virtual Private Cloud) is created within a Region.

- Subnets are created within Availability Zones inside the VPC.

- By default, all resources in a VPC can communicate with each other, even if they are in different Availability Zones.

## 🧪 Example: VPC with Subnet, Route Table, and Internet Gateway
### ✅ Step 1: Creating a VPC

- CIDR Block Used: 10.0.0.0/26

- This provides 64 IP addresses (from 10.0.0.0 to 10.0.0.63).

## 🧮 Step 2: CIDR Binary Breakdown
### Let's break down the IP 10.0.0.0 in binary:
```makefile
Decimal:      10     . 0     . 0     . 0
Binary:    00001010.00000000.00000000.00000000
```
- CIDR /26 means first 26 bits are for the network.

- Remaining 6 bits are available for host addresses.

###  Breakdown:

```adruino
00001010.00000000.00000000.00|000000
 ↑ 8-bit  ↑ 8-bit  ↑ 8-bit ↑ 2-bit  ↑ 6-bit
```

## 🔢 Step 3: Usable IP Calculation

- Total IPs in a /26 subnet: 2^6 = 64

- But not all 64 IPs are usable:

| Reserved For      | IP Address       | Description                        |
| ----------------- | ---------------- | ---------------------------------- |
| Network Address   | `10.0.0.0`       | Identifies the subnet              |
| Broadcast Address | `10.0.0.63`      | Used to communicate with all hosts |
| AWS Reserved IPs  | 3 IPs in-between | For DNS, gateway, etc.             |

## ✅ Usable IPs: 59

## 📘 Summary
- VPC: 10.0.0.0/26 — Creates 64 total IPs

- Network Address: 10.0.0.0

- Broadcast Address: 10.0.0.63

- Usable IP Range: 10.0.0.1 to 10.0.0.62 (59 usable IPs after AWS reservations)

