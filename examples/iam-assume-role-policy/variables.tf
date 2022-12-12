variable "name" {
  description = "Name of IAM policy"
  type        = string
}

variable "assumable_roles" {
  description = "List of IAM roles ARNs which can be assumed"
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
