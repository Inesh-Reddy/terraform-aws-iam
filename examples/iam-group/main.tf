module "iam_group" {
  source = "../../modules/iam-group"

  name            = var.group_name
  group_users     = var.group_users
  assumable_roles = var.assumable_roles
}
