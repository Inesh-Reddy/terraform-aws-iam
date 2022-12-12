output "id" {
  description = "The policy's ID"
  value       = module.eks_cluster_policy.id
}

output "arn" {
  description = "The ARN assigned by AWS to this policy"
  value       = module.eks_cluster_policy.arn
}

output "description" {
  description = "The description of the policy"
  value       = module.eks_cluster_policy.description
}

output "name" {
  description = "The name of the policy"
  value       = module.eks_cluster_policy.name
}

output "path" {
  description = "The path of the policy in IAM"
  value       = module.eks_cluster_policy.path
}
