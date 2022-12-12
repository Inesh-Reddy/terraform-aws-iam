# iam-users
Allows to create an IAM user. Follow below example to use the module:

```terraform
module "iam_user_" {
  source  = "./modules/iam-users"

  name          = "jack"
  force_destroy = true

  pgp_key = "keybase:test"

  password_reset_required = false
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
| <a name="module_iam_user"></a> [iam\_user](#module\_iam\_user) | terraform-aws-modules/iam/aws//modules/iam-user | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_force_destroy"></a> [force\_destroy](#input\_force\_destroy) | When destroying this user, destroy even if it has non-Terraform-managed IAM access keys, login profile or MFA devices. Without force\_destroy a user with non-Terraform-managed access keys and login profile will fail to be destroyed. | `bool` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of IAM policy and IAM group | `string` | n/a | yes |
| <a name="input_password_reset_required"></a> [password\_reset\_required](#input\_password\_reset\_required) | Whether the user should be forced to reset the generated password on first login. | `bool` | n/a | yes |
| <a name="input_pgp_key"></a> [pgp\_key](#input\_pgp\_key) | Either a base-64 encoded PGP public key, or a keybase username in the form `keybase:username`. Used to encrypt password and access key. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->

