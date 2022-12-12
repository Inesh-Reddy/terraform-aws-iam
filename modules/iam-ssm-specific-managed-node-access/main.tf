data "aws_iam_policy_document" "policy" {
  statement {
    sid = "1"

    actions = [
      "ssm:StartSession",
    ]
    effect    = "Allow"
    resources = var.instance_id
  }

  statement {
    sid = "2"

    actions = [
      "ssm:TerminateSession",
      "ssm:ResumeSession"
    ]
    effect    = "Allow"
    resources = ["arn:aws:ssm:*:*:session/&{aws:username}-*"]
  }
}


resource "aws_iam_policy" "this" {
  name        = var.policy_name
  description = "creates a IAM policy with policy passed as input"
  policy      = data.aws_iam_policy_document.policy.json

}
