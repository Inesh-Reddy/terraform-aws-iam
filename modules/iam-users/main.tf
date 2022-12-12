module "iam_user" {
  source = "terraform-aws-modules/iam/aws//modules/iam-user" #https://github.com/terraform-aws-modules/terraform-aws-iam/tree/master/modules/iam-user

  name          = var.name
  force_destroy = var.force_destroy

  pgp_key = var.pgp_key

  password_reset_required = var.password_reset_required
  tags                    = var.tags
}

