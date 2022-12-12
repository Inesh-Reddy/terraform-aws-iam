# iam-ec2-describe-policy
Allows to be used as a reference to create ec2 describe policy. Follow below example to use the module:

```terraform
module "iam-all-ec2-describe-policy" {
  source      = "./examples/iam-all-ec2-describe-policy"
}

resource "aws_iam_policy" "this" {
  name        = "all-ec2-describe-policy"
  description = "creates a IAM policy with policy passed as input"
  policy      = module.iam-all-ec2-describe-policy.policy

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

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_policy"></a> [policy](#output\_policy) | n/a |
<!-- END_TF_DOCS -->

