# terraform-portfolio-project

## Project Overview

This is a project I did as part of a Cloud Engineer Academy course. I got to practise using Terraform to build infrastructure in AWS.

## Key Features & Benefits

*   **Infrastructure as Code (IaC):** Automates infrastructure provisioning using Terraform.
*   **Version Control:** Track infrastructure changes and collaborate effectively.
*   **Repeatable Deployments:** Easily replicate infrastructure environments.
*   **Declarative Configuration:** Define the desired infrastructure state, and Terraform handles the provisioning.

## Prerequisites & Dependencies

Before you begin, ensure you have the following installed:

*   **Terraform:** Version 1.0 or later. You can download it from [Terraform's official website](https://www.terraform.io/downloads.html).
*   **Cloud Provider CLI:** For your chosen cloud provider (e.g., AWS CLI, Azure CLI, GCP CLI).
*   **Account with a Cloud Provider:** Credentials configured for Terraform to access your cloud provider.
*   **Text Editor or IDE:** For editing Terraform configuration files (e.g., VS Code with the Terraform extension).

## Installation & Setup Instructions

1.  **Clone the repository:**

    ```bash
    git clone git@github.com:Snarvid82/terraform-portfolio-project.git
    cd terraform-portfolio-project
    ```

2.  **Initialize Terraform:**

    ```bash
    terraform init
    ```

    This command initializes the Terraform working directory and downloads the necessary provider plugins.

3.  **Configure Cloud Provider Credentials:**

    Set up your cloud provider credentials using environment variables or the cloud provider's CLI. Refer to your cloud provider's documentation for specific instructions.  For example, with AWS you can configure credentials with:

    ```bash
    aws configure
    ```

4.  **Review and Customize the Terraform Configuration:**

    Modify the `.tf` files to match your desired infrastructure configuration.

5.  **Plan the Infrastructure Changes:**

    ```bash
    terraform plan
    ```

    This command generates an execution plan, showing the changes that Terraform will make to your infrastructure.  Review the plan carefully before applying.

6.  **Apply the Configuration:**

    ```bash
    terraform apply
    ```

    This command applies the changes described in the execution plan and provisions the infrastructure.  Type `yes` when prompted to confirm.

## Usage Examples

*Example Terraform configuration (main.tf):*

```terraform
# Configure the AWS Provider
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

# Provide your AWS Region
provider "aws" {
  region = "us-east-1"
}

# Create a VPC
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "main-vpc"
  }
}
```

This example creates a simple VPC in AWS. Replace this with more elaborate examples specific to your infrastructure.

## Configuration Options

*   **Region:**  Configure the AWS region (e.g., `us-east-1`, `eu-west-1`) by setting the `region` variable in the `provider` block.
*   **Instance Size:** Specify the instance size for EC2 instances (e.g., `t2.micro`, `t2.medium`).
*   **CIDR Blocks:** Customize CIDR blocks for VPCs and subnets.
*   **Tags:**  Add descriptive tags to resources for better organization and management.

These options should be defined using `variables.tf` and updated using `terraform.tfvars` or environment variables.
