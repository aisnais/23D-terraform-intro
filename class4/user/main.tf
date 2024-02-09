provider "aws" {
    region = "us-east-1"
}

module "user" {
    source = "../iam_user"
    user_name = "aisadmin"
}

module "policy" {
    source = "../iam_policy"
    policy_name = "aisadmin_policy"
    policy_description = "admin access"
}

resource "aws_iam_user_policy_attachment" "user_attach" {
  user = module.user.user_name
  policy_arn = module.policy.policy_arn
}