data "aws_iam_policy_document" "assume_role" {
  statement {
    effect    = "Allow"
    actions   = ["sts:AssumeRole"]
    resources = var.assumable_roles
  }
}

resource "aws_iam_policy" "this" {
  name        = var.name
  description = "Allows to assume role in another AWS account"
  policy      = data.aws_iam_policy_document.assume_role.json

  tags = var.tags
}



