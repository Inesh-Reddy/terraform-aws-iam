module "aws_oidc_github" {
  source = "../../modules/iam-oidc"


  enabled = var.enabled

  attach_admin_policy     = var.attach_admin_policy
  attach_read_only_policy = var.attach_read_only_policy
  create_oidc_provider    = var.create_oidc_provider
  force_detach_policies   = var.force_detach_policies
  #github_thumbprint             = var.github_thumbprint
  iam_role_name                 = var.iam_role_name
  iam_role_path                 = var.iam_role_path
  iam_role_permissions_boundary = var.iam_role_permissions_boundary
  iam_role_policy_arns          = var.iam_role_policy_arns
  github_repositories           = var.github_repositories
  max_session_duration          = var.max_session_duration
  tags                          = var.tags
  additional_policy_enabled     = var.additional_policy_enabled
  additional_policy_arn         = aws_iam_policy.example.arn

  iam_role_inline_policies = {
    "example_inline_policy" : data.aws_iam_policy_document.example.json

  }
}

data "aws_iam_policy_document" "example" {
  statement {
    actions   = ["s3:GetObject"]
    resources = ["*"]
  }
}

data "template_file" "example" {
  template = file("${path.module}/policy_template/${var.additional_policy_file}")
}



resource "aws_iam_policy" "example" {
  name   = var.additional_policy_name
  policy = data.template_file.example.rendered
}
