# create 10 users, create demo & group and add this 10 users in that group

resource "aws_iam_group" "group1" {
  name = "demo"
}
