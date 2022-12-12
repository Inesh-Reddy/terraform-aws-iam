output "iam_role_arn" {
  description = "ARN of the IAM role."
  value       = var.enabled ? module.aws_oidc_github.iam_role_arn : ""
}

output "additional_policy_arn" {

  description = "ARN of additional policy"
  value       = var.additional_policy_enabled ? aws_iam_policy.example.arn : ""
}
