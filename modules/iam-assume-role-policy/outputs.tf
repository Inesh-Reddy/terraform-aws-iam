output "assumable_roles" {
  description = "List of ARNs of IAM roles which members of IAM group can assume"
  value       = var.assumable_roles
}

output "policy_arn" {
  description = "Assume role policy ARN"
  value       = aws_iam_policy.this.arn
}

