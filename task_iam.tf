# create 10 users, create demo & devil and add this 10 users in that group

## creating 2 groups
resource "aws_iam_group" "group1" {
  name = "demo"
}

resource "aws_iam_group" "group2" {
  name = "devil"
}


## creating 10 users

resource "aws_iam_user" "adding_10_useres" {
  count = length(var.username)
  name  = element(var.username, count.index)

}

#adding user into group

resource "aws_iam_group_membership" "adding_10_useres_into_group" {
user = aws_iam_user

  group = aws_iam_group.group.name
}

