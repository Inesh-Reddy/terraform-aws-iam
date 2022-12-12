variable "instance_id_arn" {
  description = "Instance ID"
  type        = list(string)
  default     = [""]
}

variable "tags" {
  description = "A map of tags to add to all resources."
  type        = map(string)
  default = {
    "GithubRepo" = "https://github.com/infracloudio/terraform-aws-iam"
  }
}

variable "tagkey" {
  description = "Instance ID"
  type        = string
  default     = ""
}

variable "tagvalue" {
  description = "Instance ID"
  type        = string
  default     = ""
}

variable "policy_name" {
  description = "Name of policy"
  type        = string
}

variable "region" {
  description = "AWS region"
  type        = string
}
