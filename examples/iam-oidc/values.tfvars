github_repositories       = ["org/repo", "another-org/another-repo:ref:refs/heads/main", ]
region                    = "ap-south-1"
attach_admin_policy       = false
attach_read_only_policy   = false
additional_policy_enabled = false
additional_policy_file    = "ec2_fullaccess.json.tpl"
additional_policy_name    = "ec2_fullaccess"
iam_role_name             = "github_oidc"
