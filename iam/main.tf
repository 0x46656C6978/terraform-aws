# Create group `administrators`
resource "aws_iam_group" "administrators" {
  name = "administrators"
  # path = "/"
}

#
# Setup user admin
#
resource "aws_iam_user" "admin" {
  name = "admin"
  path = "/"
}
# Assign `admin` to `administrators` group
resource "aws_iam_user_group_membership" "admin" {
  user = aws_iam_user.admin.name
  groups = [
    aws_iam_group.administrators.name
  ]
}
# Create login profile
resource "aws_iam_user_login_profile" "admin" {
  user = aws_iam_user.admin.name
  password_reset_required = true
}
