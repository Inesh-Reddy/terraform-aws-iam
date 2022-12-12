output "policy_arn" {
  description = "The ARN assigned by AWS to the policy"
  value       = module.iam-all-ec2-describe-policy.policy_arn
}

output "policy_id" {
  description = "The policy's ID"
  value       = module.iam-all-ec2-describe-policy.policy_id
}


