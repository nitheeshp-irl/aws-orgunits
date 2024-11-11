
---

# AWS Organizational Units (OUs) Terraform Module

## Overview

This repository has Terraform configurations to automate the creation and management of AWS Organizational Units (OUs) within an AWS Organization. It helps segregate AWS accounts based on business functions, security needs, or operational needs, enforcing governance and simplifying account management.

## Features

- **Organizational Unit (OU) Creation**: Automates the setup of Organizational Units within AWS Organizations.
- **Modular Design**: The Terraform configuration is modular, allowing for easy customization and reuse in different environments.

## Prerequisites

Before using this module, ensure that you have the following:

- **Terraform**: Install [Terraform](https://www.terraform.io/downloads.html) on your local machine.
- **AWS CLI**: Ensure the [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html) is configured with the necessary permissions to manage AWS Organizations.
- **AWS Organization**: You must have an existing root AWS Organization set up.

## Repository Structure

- **main.tf**: The primary Terraform configuration file for creating OUs and applying SCPs.
- **variables.tf**: Defines input variables for the Terraform module like OU names
- **outputs.tf**: Outputs the results of the Terraform execution, such as the OU IDs.
- **README.md**: This file, providing documentation for the repository.

## Usage

### Step 1: Clone the Repository

Clone this repository to your local environment:

```bash
git clone https://github.com/nitheeshp-irl/org_units.git
cd org_units
```

### Step 2: Configure Terraform Variables

Update the `variables.auto.tfvars` file with the specific details for your AWS Organization, such as the names of the OUs you wish to create

Example `variables.auto.tfvars`:

```hcl
aws_region = "us-east-2"

organizational_units = [
  {
    unit_name = "apps"
  },
  {
    unit_name = "infra"
  },
  {
    unit_name = "stagingpolicy"
  },
  {
    unit_name = "sandbox"
  },
  {
    unit_name = "security"
  }
]

```

### Step 3: Initialize Terraform

Initialize the Terraform configuration to download the necessary providers and set up the working directory:

```bash
terraform init
```

### Step 4: Plan and Apply

Review the Terraform execution plan to see the resources that will be created:

```bash
terraform plan
```

If the plan looks good, apply the configuration to create the OUs and attach the SCPs:

```bash
terraform apply
```

### Step 5: Verify

Once the Terraform apply completes, you can verify the creation of the OUs and the application of SCPs through the AWS Management Console under the AWS Organizations service.

## Variables

- **ou_names**: A list of names for the Organizational Units that need to be created.

## Outputs

- **ou_ids**: The IDs of the created Organizational Units.

## Contributing

Contributions to this project are welcome! If you have a feature request or find a bug, please open an issue or submit a pull request. Ensure that your contributions follow the established coding standards and best practices.


## Contact

If you have any questions or need support, feel free to open an issue in the repository, and we will do our best to assist you.

---