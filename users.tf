############ varibale examples files ###############
# resource "aws_iam_user" "reference1" {
#   name = var.string_var
#   tags = {
#     tag-key = "new-user1"
#   }
# }

# #Note:- this user calling name --> variable string --> string variable provide "sandesh"    

# resource "aws_iam_user" "reference2" {
#   name = var.number_var
#   tags = {
#     tag-key = "new-user2"
#   }
# }



resource "aws_iam_user" "reference2" {
  name = var.list_var[2]
  tags = {
    tag-key = "new-user3"
  }
}
