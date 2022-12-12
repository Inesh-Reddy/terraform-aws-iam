output "policy" {
  value = data.aws_iam_policy_document.policy.json
}

output "policy_arn" {
  description = "Arn of the policy"
  value       = aws_iam_policy.this.id
}

