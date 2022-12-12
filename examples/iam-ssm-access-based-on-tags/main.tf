module "iam_ssm_access_tags" {
  source = "../../modules/iam-ssm-access-based-on-tags"

  tagkey      = var.tagkey
  tagvalue    = var.tagvalue
  instance_id = var.instance_id_arn
  name        = var.policy_name

}



