# create 10 users, create demo & devil and add this 10 users in that group

## creating 2 groups
resource "aws_iam_group" "group1" {
  name = "demo"
}

resource "aws_iam_group" "group2" {
  name = "devil"
}


## creating 10 users
resource "aws_iam_user" "add_user_2" {
    name = "thor"
    tags = {
        tag-key = "tony-stark1"
    }
}

resource "aws_iam_user" "add_user_2" {
    name = "thor"
    tags = {
        tag-key = "tony-stark1"
    }
}