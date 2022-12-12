# iam-assumable-role
Allows to create a role which can be assumed. Follow below example to use the module:

```terraform
module "iam_assumable_role_" {
  source  = "./modules/iam-assumable-role"

  trusted_role_arns = [
    "arn:aws:iam::XXXXXXXXXX:root",
  ]

  create_role = true

  role_name         = "eks-read-only"
  role_requires_mfa = false

  custom_role_policy_arns = []
  number_of_custom_role_policy_arns = 0
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_iam_assumable_role"></a> [iam\_assumable\_role](#module\_iam\_assumable\_role) | terraform-aws-modules/iam/aws//modules/iam-assumable-role | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create_role"></a> [create\_role](#input\_create\_role) | Whether to create a role | `bool` | n/a | yes |
| <a name="input_custom_role_policy_arns"></a> [custom\_role\_policy\_arns](#input\_custom\_role\_policy\_arns) | List of ARNs of IAM policies to attach to IAM role | `list(string)` | `[]` | no |
| <a name="input_number_of_custom_role_policy_arns"></a> [number\_of\_custom\_role\_policy\_arns](#input\_number\_of\_custom\_role\_policy\_arns) | Number of IAM policies to attach to IAM role | `number` | `null` | no |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | IAM role name | `string` | n/a | yes |
| <a name="input_role_requires_mfa"></a> [role\_requires\_mfa](#input\_role\_requires\_mfa) | Whether role requires MFA | `bool` | n/a | yes |
| <a name="input_trusted_role_arns"></a> [trusted\_role\_arns](#input\_trusted\_role\_arns) | ARNs of AWS entities who can assume these roles | `list(string)` | `[]` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->

