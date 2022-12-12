module "iam_user" {
  source = "../../modules/iam-users"

  name          = var.name
  force_destroy = var.force_destroy

  pgp_key = var.pgp_key

  password_reset_required = var.password_reset_required
  tags                    = var.tags
}

