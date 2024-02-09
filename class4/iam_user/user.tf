resource "aws_iam_user" "user" {
  name = var.user_name
}

output "user_name {
  value       = "aws_iam_user.user.name
}
