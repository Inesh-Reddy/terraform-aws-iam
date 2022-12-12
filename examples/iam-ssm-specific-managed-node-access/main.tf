module "iam_ssm_specific_access" {
  source = "../../modules/iam-ssm-specific-managed-node-access"

  instance_id = var.instance_id_arn
  policy_name = var.policy_name
}
