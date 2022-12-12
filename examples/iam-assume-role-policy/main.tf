module "iam_assume_role_policy" {
  source = "../../modules/iam-assume-role-policy"

  name            = var.name
  assumable_roles = var.assumable_roles
}
