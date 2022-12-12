module "eks_cluster_policy" {

  source = "../../modules/iam-eks-describe-cluster-policy"

  policy_name        = var.policy_name
  policy_description = var.policy_description

}

