output "group_users" {
  description = "List of IAM users in IAM group"
  value       = module.iam_group.group_users
}
output "group_name" {
  description = "IAM group name"
  value       = module.iam_group.group_name
}

output "group_arn" {
  description = "IAM group arn"
  value       = module.iam_group.group_arn
}

output "assume_policy_arn" {
  description = "Policy arn which allow us to assume the role mentioned"
  value       = module.iam_group.assume_policy_arn
}
