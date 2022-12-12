variable "name" {
  description = "Name of IAM policy and IAM group"
  type        = string
}

variable "force_destroy" {
  description = "When destroying this user, destroy even if it has non-Terraform-managed IAM access keys, login profile or MFA devices. Without force_destroy a user with non-Terraform-managed access keys and login profile will fail to be destroyed."
  type        = bool
}

variable "pgp_key" {
  description = "Either a base-64 encoded PGP public key, or a keybase username in the form `keybase:username`. Used to encrypt password and access key."
  type        = string
}

variable "password_reset_required" {
  description = "Whether the user should be forced to reset the generated password on first login."
  type        = bool
}

variable "tags" {
  description = "A map of tags to add to all resources."
  type        = map(string)
  default = {
    "GithubRepo" = "https://github.com/infracloudio/terraform-aws-iam"
  }
}


