# iam-assume-role-policy
Allows to create a policy with a pre-existing role that can be assumed. Follow below example to use the module:

```terraform
module "iam-assume-role-policy" {
  source  = "./modules/iam-assume-role-policy"

  name = "production-readonly"

  assumable_roles = [
    "arn:aws:iam::XXXXXXXXX:role/readonly"  # these roles can be created using `iam_assumable_roles` submodule
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
| [aws_iam_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_policy_document.assume_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_assumable_roles"></a> [assumable\_roles](#input\_assumable\_roles) | List of IAM roles ARNs which can be assumed | `list(string)` | `[]` | no |

