output "policy" {
  value = module.s3_policy.policy
}

output "policy_arn" {
  description = "Arn of the policy"
  value       = module.s3_policy.policy_arn
}
