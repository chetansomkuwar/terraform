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

#Note:- this resource calling --> number variable --> thier provided no

# resource "aws_iam_user" "reference3" {
#   name = var.list_var[3]
#   tags = {
#     tag-key = "new-user3"
#   }
# }

#Note:- this resource calling --> list variable --> thier provided list of username

resource "aws_iam_user" "reference4" {
  name = var.map_var.u2
  # here u2 
  tags = {
    tag-key = "new-user3"
  }
}
