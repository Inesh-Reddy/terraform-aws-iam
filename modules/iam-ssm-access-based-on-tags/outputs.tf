output "policy" {
  value = data.aws_iam_policy_document.policy.json
}

output "policy_arn" {
  value = aws_iam_policy.this.id
}

