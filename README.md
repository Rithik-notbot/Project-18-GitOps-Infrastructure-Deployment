# Project 18 - GitOps Infrastructure Deployment

## Objective

Automate infrastructure management using GitOps principles, Terraform, GitHub, and GitHub Actions.

The project demonstrates how infrastructure changes can be reviewed, validated, and managed through a controlled Git workflow.

## Infrastructure

The Terraform configuration creates:

- An AWS S3 bucket.
- S3 bucket versioning.
- Terraform outputs for bucket name, ARN, and versioning status.

## Tools and Technologies

- AWS
- Amazon S3
- Terraform
- Git
- GitHub
- GitHub Actions
- YAML

## GitOps Workflow

### 1. Development

1. Create a feature branch.
2. Make infrastructure changes.
3. Commit and push the changes to GitHub.
4. Open a pull request against the `main` branch.

### 2. Automated Validation

GitHub Actions automatically runs the following checks:

1. Checkout the repository.
2. Install Terraform.
3. Check Terraform formatting.
4. Initialize Terraform.
5. Validate the configuration.
6. Generate a Terraform plan.

### 3. Review and Approval

- Review the pull request.
- Check the Terraform plan.
- Approve changes before merging.
- Merge approved changes into `main`.

### 4. Deployment

Actual AWS deployment is reserved for a separately approved workflow.

Before deployment, the following must be configured:

- Approved AWS IAM role.
- Secure GitHub OIDC authentication.
- Remote Terraform state storage.
- Protected GitHub production environment.
- Required deployment approvals.

## Security

- No AWS credentials are stored in the repository.
- Terraform state files are excluded from Git.
- Sensitive configuration files are excluded.
- Infrastructure changes are reviewed before merging.
- AWS deployment requires company authorization.

## Repository Structure

```text
Project-18-GitOps-Infrastructure-Deployment/
│
├── .github/
│ └── workflows/
│ └── terraform-gitops.yml
│
├── .gitignore
├── main.tf
├── outputs.tf
├── README.md
└── versions.tf
```

## Current Status

- [x] Terraform infrastructure configuration created.
- [x] GitHub Actions workflow created.
- [x] Terraform formatting checked.
- [x] Terraform initialized.
- [x] Terraform configuration validated.
- [x] GitOps workflow documented.
- [ ] GitHub repository setup.
- [ ] Pull request workflow testing.
- [ ] AWS OIDC configuration.
- [ ] Remote Terraform state configuration.
- [ ] Approved AWS deployment.
- [ ] Deployment evidence screenshots.

**Deployment Status:** Pending company approval.