# iam-ssm-specific-managed-node-access
Using this policy the user is allowed Session Manager access to specific managed node provided as input in policy, and allowed to end only session on that node. Follow below example to use the module:

```terraform
module "iam-ssm-specific-managed-node-access" {
  source      = "./modules/iam-ssm-specific-managed-node-access"

  instance_id  = ["arn:aws:ec2:us-east-2:123456789012:instance/i-1234567890EXAMPLE"]

}

resource "aws_iam_policy" "this" {
  name        = "iam-ssm-specific-managed-node-access-policy"
  description = "creates a IAM policy with policy passed as input"
  policy      = module.iam-ssm-specific-managed-node-access.policy

}

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
| <a name="input_instance_id"></a> [instance\_id](#input\_instance\_id) | Instance ID | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to all resources. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_policy"></a> [policy](#output\_policy) | n/a |
<!-- END_TF_DOCS -->