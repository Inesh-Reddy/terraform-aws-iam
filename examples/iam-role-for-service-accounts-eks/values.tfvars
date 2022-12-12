create_role            = true
role_path              = "/"
role_name              = "eks_sa_role"
allow_self_assume_role = false
oidc_providers = {
  one = {
    provider_arn               = "arn:aws:iam::012345678901:oidc-provider/oidc.eks.us-east-1.amazonaws.com/id/5C54DDF35ER19312844C7333374CC09D"
    namespace_service_accounts = ["default:my-app-staging", "canary:my-app-staging"]
  }
  two = {
    provider_arn               = "arn:aws:iam::012345678901:oidc-provider/oidc.eks.ap-southeast-1.amazonaws.com/id/5C54DDF35ER54476848E7333374FF09G"
    namespace_service_accounts = ["default:my-app-staging"]
  }
}
role_name_prefix = "AmazonEKS_"
role_description = "Iam role for eks service accounts"
tags = {
  "GithubRepo" = "https://github.com/infracloudio/terraform-aws-iam"
}

region                                                          = "ap-south-1"
role_policy_arns                                                = {} #replace like {"name" = "policy arn"}
attach_cert_manager_policy                                      = false
attach_cluster_autoscaler_policy                                = false
attach_ebs_csi_policy                                           = false
attach_efs_csi_policy                                           = false
attach_external_dns_policy                                      = false
attach_external_secrets_policy                                  = false
attach_fsx_lustre_csi_policy                                    = false
attach_karpenter_controller_policy                              = false
attach_load_balancer_controller_policy                          = false
attach_load_balancer_controller_targetgroup_binding_only_policy = false
attach_appmesh_envoy_proxy_policy                               = false
attach_amazon_managed_service_prometheus_policy                 = false
attach_node_termination_handler_policy                          = false
attach_velero_policy                                            = false
attach_vpc_cni_policy                                           = false