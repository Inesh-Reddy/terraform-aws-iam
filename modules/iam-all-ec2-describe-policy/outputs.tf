output "policy_arn" {
  description = "The ARN assigned by AWS to the policy"
  value       = aws_iam_policy.this.arn
}

output "policy_id" {
  description = "The ARN assigned by AWS to the policy"
  value       = aws_iam_policy.this.policy_id
}
