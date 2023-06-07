variable "admin_login_password" {
  type = string
  description = "Admin IAM login password"
  default = aws_iam_user_login_profile.admin.password
}
