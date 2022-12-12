module "iam_assumable_role" {
  source = "../../modules/iam-assumable-role"

  trusted_role_arns = var.trusted_role_arns
  create_role       = var.create_role

  role_name         = var.role_name
  role_requires_mfa = var.role_requires_mfa

  custom_role_policy_arns = var.custom_role_policy_arns
  tags                    = var.tags
}

