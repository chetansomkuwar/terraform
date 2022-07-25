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

# resource "aws_iam_user" "reference4" {
#   name = var.map_var.u2
#   # here u2 mention after the name & u2= find variable in variabl files.
#   tags = {
#     tag-key = "new-user3"
#   }
# }

#Note:- in map resource u2,u3,u1 call variable map

# resource "aws_iam_user" "reference5" {
#   name = var.any_var.u4.u3
#   tags = {
#     tag-key = "komal-giradkar"
#   }
# }

#Note:- u4.u3 means in "any variable" --> select "u4=map" --> choose rahul


# resource "aws_iam_user" "reference6" {
#   name = var.boolian_var
#   tags = {
#     tag-key = "new-user2"
#   }
# }

#########################################################################

# resource "aws_iam_user" "reference7" {
#   name = var.boolian_var
#   tags = {
#     tag-key = "new-user3"
#   }
# }
