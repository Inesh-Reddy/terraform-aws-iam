data "aws_iam_policy_document" "policy" {
  statement {
    sid = "ec2"

    actions = [
      "ec2:Describe*",
    ]
    effect    = "Allow"
    resources = ["*"]
  }
}

resource "aws_iam_policy" "this" {
  name        = var.policy_name
  description = var.policy_description
  policy      = data.aws_iam_policy_document.policy.json

}
