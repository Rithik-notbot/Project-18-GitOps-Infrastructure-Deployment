# Project 18 - GitOps Infrastructure Deployment

## Objective

Demonstrate GitOps principles using Terraform, Git, GitHub, and GitHub Actions.

## Tools and Technologies

- Terraform
- Git
- GitHub
- GitHub Actions
- YAML

## Infrastructure Demonstration

This project uses Terraform's built-in `terraform_data` resource to demonstrate infrastructure change management without requiring AWS credentials.

## GitOps Workflow

### Development
1. Create a feature branch.
2. Modify the Terraform configuration.
3. Commit and push changes.
4. Open a pull request against `main`.

### Automated Validation

GitHub Actions automatically:
1. Checks out the repository.
2. Installs Terraform.
3. Checks Terraform formatting.
4. Initializes Terraform.
5. Validates the configuration.
6. Generates a Terraform plan.

### Review and Approval
- Review proposed changes.
- Check the Terraform plan.
- Approve changes before merging.
- Merge approved changes into `main`.

## Security

- No AWS credentials are stored in GitHub.
- No AWS access keys are required for this demonstration.
- Terraform state files are excluded from Git.
- Production AWS deployment is outside the scope of this validation-only workflow and requires company approval.

## Repository Structure

```text
Project-18-GitOps-Infrastructure-Deployment/
├── .github/
│ └── workflows/
│ └── terraform-gitops.yml
├── .gitignore
├── main.tf
├── outputs.tf
├── README.md
└── versions.tf
```

## Current Status

- [x] Terraform configuration created.
- [x] GitHub Actions workflow configured.
- [x] Terraform formatting checked.
- [x] Terraform initialization completed.
- [x] Terraform validation completed.
- [ ] GitHub Actions workflow verification.
- [ ] Pull request workflow testing.
- [ ] Evidence screenshots.

**Deployment Status:** Validation-only demonstration. No AWS resources deployed.