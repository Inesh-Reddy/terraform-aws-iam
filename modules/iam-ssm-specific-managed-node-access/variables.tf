variable "instance_id" {
  description = "Instance ID"
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

variable "policy_name" {
  description = "Policy name"
  type        = string
}
