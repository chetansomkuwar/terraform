# #creat 10 users
# resource "aws_iam_user" "u1" {
#   name = "user11"
# }

# resource "aws_iam_user" "u2" {
#   name = "user12"
# }

# resource "aws_iam_user" "u3" {
#   name = "user13"
# }

# resource "aws_iam_user" "u4" {
#   name = "user14"
# }

# resource "aws_iam_user" "u5" {
#   name = "user15"
# }

# resource "aws_iam_user" "u6" {
#   name = "user16"
# }

# #create 2 groups

# resource "aws_iam_group" "g1" {
#   name = "group111"
# }

# resource "aws_iam_group" "g2" {
#   name = "group222"
# }

# #add five users into group

# resource "aws_iam_group_membership" "adding_5_users_into_group111" {
#   name = "tf-testing-group-membership"

#   users = [
#     aws_iam_user.u1.name,
#     aws_iam_user.u2.name,
#     aws_iam_user.u3.name,
#     aws_iam_user.u4.name,
#     aws_iam_user.u5.name,
#     aws_iam_user.u6.name,
#   ]

#   group = aws_iam_group.g1.name
# }

# resource "aws_iam_group_membership" "adding_5_users_into_group222" {
#   name = "tf-testing-group-membership1"

#   users = [
#     aws_iam_user.u1.name,
#     aws_iam_user.u2.name,
#     aws_iam_user.u3.name,
#     aws_iam_user.u4.name,
#     aws_iam_user.u5.name,
#     aws_iam_user.u6.name,
#   ]

#   group = aws_iam_group.g2.name
# }
