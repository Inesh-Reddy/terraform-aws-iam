data "aws_iam_policy_document" "policy" {
  statement {
    sid = "S3"

    actions = [
      "s3:ListBucket",
      "s3:PutObject",
      "s3:GetObject",
      "s3:DeleteObject",
    ]

    resources = [
      var.bucket_arn,
      format("%s/*", var.bucket_arn),
    ]
  }
}

resource "aws_iam_policy" "this" {
  name        = "s3-read-write-policy"
  description = "creates a IAM policy with policy passed as input"
  policy      = data.aws_iam_policy_document.policy.json

}


