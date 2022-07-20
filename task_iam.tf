# create 10 users, create demo & devil and add this 10 users in that group

resource "aws_iam_group" "group1" {
  name = "demo"
}

resource "aws_iam_group" "group2" {
  name = "devil"
}

resource "aws_iam_user" "add_user_2" {
    name = "thor"
    tags = {
        tag-key = "tony-stark1"
    }
}