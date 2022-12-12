trusted_role_arns = ["arn:aws:iam::XXXXXXXXXX:<user>", ] # replace with user ARN

region = "ap-south-1"

create_role             = true
role_name               = "ec2-read-only"
role_requires_mfa       = false
custom_role_policy_arns = ["arn:aws:iam::aws:policy/AmazonEC2ReadOnlyAccess"]
