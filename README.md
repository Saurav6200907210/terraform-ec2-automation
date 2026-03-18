# 🚀 Terraform EC2 Automation (Dynamic AMI)

This project demonstrates how to provision an AWS EC2 instance using Terraform with **dynamic AMI fetching** instead of hardcoding values.

---

## 📌 Features

* ✅ Dynamic AMI selection using Terraform data source
* ✅ Automated EC2 instance provisioning
* ✅ Outputs public IP after deployment
* ✅ Clean and modular Terraform structure

---

## 🛠️ Tech Stack

* Terraform
* AWS (EC2)

---

## 📂 Project Structure

```
.
├── main.tf
├── variables.tf
├── outputs.tf
└── .gitignore
```

---

## ⚙️ How to Run

### 1️⃣ Initialize Terraform

```bash
terraform init
```

### 2️⃣ Plan the Infrastructure

```bash
terraform plan
```

### 3️⃣ Apply Configuration

```bash
terraform apply
```

---

## 🌐 Output

After successful deployment, you will get:

* EC2 Public IP

---

## 📖 What I Learned

* Using Terraform data sources
* Infrastructure as Code (IaC) concepts
* Automating cloud resource provisioning
* Writing clean and reusable Terraform code

---

## ⚠️ Note

* `.tfstate` files are ignored for security
* Make sure AWS credentials are configured

---

## 👨‍💻 Author

Saurav Kumar

---

⭐ If you like this project, give it a star!
