output "admin_iam_login_password" {
  description = "Admin IAM login password"
  value = aws_iam_user_login_profile.admin.password
}
