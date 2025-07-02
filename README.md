# Deploying EKS cluster with Terraform
Infrastructure-as-Code (IaC) project for deploying a secure and scalable Amazon EKS (Elastic Kubernetes Service) cluster using Terraform. This setup provisions VPC networking,  EKS control plane, and worker nodes across multiple availability zones — fully automated and customizable.

## Project Overview

This project uses **Terraform** to automate the deployment of a highly available and scalable **Amazon EKS cluster** on AWS. It provisions the infrastructure needed to run Kubernetes workloads in a production-ready environment, including:

- Custom VPC with public and private subnets across multiple availability zones
- EKS Control Plane setup 
- Managed Node Groups for compute capacity
- Secure and modular configuration using variables and modules

This setup is ideal for learning Infrastructure as Code (IaC) and building production-grade Kubernetes environments.

---

## Tools Used

- **Terraform** (v1.x)
- **AWS Provider** (v5.x)
- **Terraform AWS Modules**
  - `vpc`
  - `eks`
- **AWS CLI**

---

## Setting Up Infrastructure Directory in Terraform
Your structure should look like this:
```
terraform-eks-cluster/
├── vpc.tf # VPC configuration using terraform-aws-modules/vpc
├── eks.tf # EKS cluster, node groups, IAM roles
├── provider.tf # AWS provider and region configuration
├── terraform.tf # Required provider and Terraform version settings
├── variables.tf # Input variables used throughout the setup
```
---

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/your-username/terraform-eks-cluster.git
cd terraform-eks-cluster
```

### 2. Configure AWS CLI 
```bash
aws configure
```
### 3. Initialize Terraform
 Initialize Terraform with the required providers and modules
```bash
terraform init 
```
![cap4](https://github.com/user-attachments/assets/c30f35ea-adc8-4e59-8ed4-203a2e6cf006)

### 4. Review the execution plan
Review the plan to apply changes
```bash
terraform plan
```
![cap6](https://github.com/user-attachments/assets/1374c8a8-8d66-412c-abc4-afdb081d9739)

### 5. Apply the changes
Apply the changes to provision infrastructure
```bash
terraform apply 
```
![cap1](https://github.com/user-attachments/assets/af49a16d-b9bb-4eb6-b91b-fa1f3d6bcf28)

You can see below that all instance , eks cluster  are running or created , which is created through Terraform :

1. instances
   
![cap3](https://github.com/user-attachments/assets/48db44e4-dc93-44aa-88c5-5765808c4b6e)


3. EKS cluster
   
![cap2](https://github.com/user-attachments/assets/cc40628b-79ac-4962-9b0c-87bea9085b56)

## 🧼 Cleanup
To destroy all infrastructure created:
```bash
terraform destroy
```
![Capture](https://github.com/user-attachments/assets/ac9937e1-49ff-44da-a33f-b58e89f0857b)






