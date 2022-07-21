# #variables.tf
# variable "username" {
#   type    = list(string)
#   default = ["user1", "user2", "user3", "user4", "user5", "user6", "user7", "user8", "user9", "user10"]

# }


#### varibale for strings #####
variable "string_var" {
  type        = string
  default     = "sandesh"
  description = "variables details"
}

#### variable for number #####
variable "number_var" {
  type        = number
  default     = "2"
  description = "variables details through number"
}

#### variable for list ##### --> call listing
variable "list_var" {
  type        = list
  default     = [sandesh1, sandesh2 ,sandesh3, sandesh4]
    #               0         1         2         3
  description = "variables details through list"
}