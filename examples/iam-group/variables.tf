variable "assumable_roles" {
  description = "List of IAM roles ARNs which can be assumed by the group"
  type        = list(string)
  default     = []
}

variable "group_name" {
  description = "Name of IAM policy and IAM group"
  type        = string
}

variable "group_users" {
  description = "List of IAM users to have in an IAM group which can assume the role"
  type        = list(string)
  default     = []
}

variable "tags" {
  description = "A map of tags to add to all resources."
  type        = map(string)
  default = {
    "GithubRepo" = "https://github.com/infracloudio/terraform-aws-iam"
  }
}

variable "region" {
  description = "AWS region"
  type        = string
}
