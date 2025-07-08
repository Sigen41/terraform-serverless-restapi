#  Serverless REST API with Terraform, Python & AWS

This project is a **fully serverless REST API** built using:
- **Terraform** for infrastructure as code (IaC)
- **AWS Lambda (Python 3.10)** for compute
- **API Gateway** for routing HTTP requests
- **DynamoDB** as a NoSQL database backend

---

##  Project Overview

I built this project by closely following **Fabian Kaiser’s popular Udemy course**, originally designed for AWS CDK with TypeScript — but re-engineered it entirely with **Terraform and Python** for better cloud portability and IaC clarity.

It’s an excellent demonstration of how to:
- Build a modern, serverless backend
- Deploy Lambda functions with Terraform
- Connect API Gateway resources and methods
- Integrate AWS services securely with IAM policies
- Automate deployment and teardown to control cloud costs

---


---

## 🔧 How to Deploy

1️ **Clone the repo**

```bash
git clone https://github.com/Sigen41/terraform-serverless-restapi.git
cd terraform-serverless-restapi/terraform

2 **Initialize terraform**
terraform init

3 **Deploy infrastructure**
terraform apply -auto-approve

4 **Test the API using cURL**
curl -X POST https://{api-id}.execute-api.{region}.amazonaws.com/dev/items \
  -H "Content-Type: application/json" \
  -d '{"id": "123", "name": "Test Item"}'

5 **Destroy infrastructure when done** (avoid costs)
terraform destroy -auto-approve


 LICENSE

 
---

## ✅ Next:
- Replace the placeholder Medium and LinkedIn links with your actual profile URLs
- Copy this into a `README.md` file at your project root
- Commit and push:

```bash
git add README.md
git commit -m "Add professional README"
git push


