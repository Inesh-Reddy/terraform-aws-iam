# iam-s3-read-write-policy
Allows to be used as a reference to create s3 read-write bucket policy. Follow below example to use the module:

```terraform
module "iam-s3-read-write-policy" {
  source      = "./modules/iam-s3-read-write-policy"

  bucket_arn  = "arn:aws:s3:::eks-test"

}

resource "aws_iam_policy" "this" {
  name        = "s3-read-write-policy"
  description = "creates a IAM policy with policy passed as input"
  policy      = module.iam-s3-read-write-policy.policy

}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_policy_document.policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_bucket_arn"></a> [bucket\_arn](#input\_bucket\_arn) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_policy"></a> [policy](#output\_policy) | n/a |
<!-- END_TF_DOCS -->

