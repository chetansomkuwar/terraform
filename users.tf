############ varibale examples files ###############
resource "aws_iam_user" "reference1" {
  name = var.string_var
  tags = {
    tag-key = "new-user1"
  }
}

#Note:- this user calling name --> variable string --> string variable provide "sandesh"

############ varibale examples files ###############
    