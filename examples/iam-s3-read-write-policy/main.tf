module "s3_policy" {
  source = "../../modules/iam-s3-read-write-policy"

  bucket_arn = var.bucket_arn
}


