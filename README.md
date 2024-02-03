# 23D-terraform-class1

Terraform:
- infrastructure as code tool, one of the most popular tools in 
    the industry
- can work with multiple cloud providers like aws, google cloud, oracle etc
- company behind Terraform is Hashicorp that makes another set of useful tools
  like Vault, Consul, Nomad, Vagrant...

terraform provider:
    it's a software that allows terraform program to interact with platform like AWS/GCP/Oracle
    to manage resources.

how does terraform know what AWS credentials to use when we run it?
It uses profiles (access key/secret access key) configured in your ~/.aws/credentials file.
You can also hardcode credentials in your Terraform code but it's HIGHLY NOT RECOMMENDED.

### Learning terraform
Official tutorial: https://developer.hashicorp.com/terraform/tutorials/aws-get-started
