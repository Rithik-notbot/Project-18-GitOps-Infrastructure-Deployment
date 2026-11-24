output "bucket_name" {
  description = "Name of the GitOps example S3 bucket"
  value       = aws_s3_bucket.gitops.bucket
}

output "bucket_arn" {
  description = "ARN of the GitOps example S3 bucket"
  value       = aws_s3_bucket.gitops.arn
}

output "versioning_status" {
  description = "S3 bucket versioning status"
  value       = aws_s3_bucket_versioning.gitops.versioning_configuration[0].status
}