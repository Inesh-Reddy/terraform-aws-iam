module "iam_role_eks_sa" {

  source = "../../modules/iam-role-for-service-accounts-eks"

  create_role                                                     = var.create_role
  role_path                                                       = var.role_path
  role_name                                                       = var.role_name
  allow_self_assume_role                                          = var.allow_self_assume_role
  oidc_providers                                                  = var.oidc_providers
  role_name_prefix                                                = var.role_name_prefix
  role_description                                                = var.role_description
  tags                                                            = var.tags
  role_policy_arns                                                = var.role_policy_arns
  attach_cert_manager_policy                                      = var.attach_cert_manager_policy
  attach_cluster_autoscaler_policy                                = var.attach_cluster_autoscaler_policy
  attach_ebs_csi_policy                                           = var.attach_ebs_csi_policy
  attach_efs_csi_policy                                           = var.attach_efs_csi_policy
  attach_external_dns_policy                                      = var.attach_external_dns_policy
  attach_external_secrets_policy                                  = var.attach_external_secrets_policy
  attach_fsx_lustre_csi_policy                                    = var.attach_fsx_lustre_csi_policy
  attach_karpenter_controller_policy                              = var.attach_karpenter_controller_policy
  attach_load_balancer_controller_policy                          = var.attach_load_balancer_controller_policy
  attach_load_balancer_controller_targetgroup_binding_only_policy = var.attach_load_balancer_controller_targetgroup_binding_only_policy
  attach_appmesh_envoy_proxy_policy                               = var.attach_appmesh_envoy_proxy_policy
  attach_amazon_managed_service_prometheus_policy                 = var.attach_amazon_managed_service_prometheus_policy
  attach_node_termination_handler_policy                          = var.attach_node_termination_handler_policy
  attach_velero_policy                                            = var.attach_velero_policy
  attach_vpc_cni_policy                                           = var.attach_vpc_cni_policy
}