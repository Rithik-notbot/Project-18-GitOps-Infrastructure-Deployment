output "project_name" {
  description = "GitOps demonstration project"
  value       = terraform_data.gitops_demo.input.project
}

output "workflow_status" {
  description = "GitOps workflow status"
  value       = terraform_data.gitops_demo.input.status
}