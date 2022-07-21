# #variables.tf
# variable "username" {
#   type    = list(string)
#   default = ["user1", "user2", "user3", "user4", "user5", "user6", "user7", "user8", "user9", "user10"]

# }


# string variable
variable "image_id" {
  type        = string
  description = "The id of the machine image (AMI) to use for the server."
}
