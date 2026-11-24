terraform {
  required_version = ">= 1.5.0"
}

resource "terraform_data" "gitops_demo" {
  input = {
    project  = "Project-18"
    workflow = "GitOps"
    platform = "GitHub Actions"
    status   = "validated"
  }
}