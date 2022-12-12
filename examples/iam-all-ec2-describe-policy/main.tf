module "iam-all-ec2-describe-policy" {
  source = "../../modules/iam-all-ec2-describe-policy"

  policy_name        = var.policy_name
  policy_description = var.policy_description
}



