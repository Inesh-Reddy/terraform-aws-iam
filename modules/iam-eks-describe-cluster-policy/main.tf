data "aws_iam_policy_document" "policy" {
  statement {
    sid       = "eks"
    actions   = ["eks:DescribeCluster"]
    resources = ["*"]
  }
}

resource "aws_iam_policy" "this" {
  name        = var.policy_name
  description = var.policy_description
  policy      = data.aws_iam_policy_document.policy.json

}


