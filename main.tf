resource "aws_s3_bucket" "gitops" {
  bucket = "project-18-gitops-infrastructure-2026"

  tags = {
    Name      = "Project-18-GitOps"
    Project   = "Project-18"
    ManagedBy = "Terraform"
  }
}

resource "aws_s3_bucket_versioning" "gitops" {
  bucket = aws_s3_bucket.gitops.id

  versioning_configuration {
    status = "Enabled"
  }
}