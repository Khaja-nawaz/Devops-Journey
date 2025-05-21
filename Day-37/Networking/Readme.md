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
