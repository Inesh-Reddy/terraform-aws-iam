# iam-group
Allows to create a IAM group with user and policy attachment. Follow below example to use the module:

```terraform
module "iam-group-" {
  source  = "./modules/iam-group"

  name = "eks-read-only-group"

  group_users = [
    "jack"  ]

    assumable_roles = [
      "arn:aws:iam::XXXXXXXXXX:role/eks-read-only"  # these roles can be created using `iam_assumable_roles` submodule
    ]
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_group.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group) | resource |
| [aws_iam_group_membership.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_membership) | resource |
| [aws_iam_group_policy_attachment.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_group_policy_attachment) | resource |
| [aws_iam_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_policy_document.assume_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assumable_roles"></a> [assumable\_roles](#input\_assumable\_roles) | List of IAM roles ARNs which can be assumed by the group | `list(string)` | `[]` | no |
| <a name="input_group_users"></a> [group\_users](#input\_group\_users) | List of IAM users to have in an IAM group which can assume the role | `list(string)` | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of IAM policy and IAM group | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | A map of tags to add to all resources. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_group_arn"></a> [group\_arn](#output\_group\_arn) | IAM group arn |
| <a name="output_group_name"></a> [group\_name](#output\_group\_name) | IAM group name |
| <a name="output_group_users"></a> [group\_users](#output\_group\_users) | List of IAM users in IAM group |
<!-- END_TF_DOCS -->

