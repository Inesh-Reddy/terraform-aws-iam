variable "trusted_role_arns" {
  description = "ARNs of AWS entities who can assume these roles"
  type        = list(string)
  default     = []
}

variable "create_role" {
  description = "Whether to create a role"
  type        = bool
}

variable "role_name" {
  description = "IAM role name"
  type        = string
}

variable "role_requires_mfa" {
  description = "Whether role requires MFA"
  type        = bool
}

variable "custom_role_policy_arns" {
  description = "List of ARNs of IAM policies to attach to IAM role"
  type        = list(string)
  default     = []
}

variable "number_of_custom_role_policy_arns" {
  description = "Number of IAM policies to attach to IAM role"
  type        = number
  default     = null
}

variable "tags" {
  description = "A map of tags to add to all resources."
  type        = map(string)
  default = { "GithubRepo" = "https://github.com/infracloudio/terraform-aws-iam"

  }
}
