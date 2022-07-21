# #variables.tf
# variable "username" {
#   type    = list(string)
#   default = ["user1", "user2", "user3", "user4", "user5", "user6", "user7", "user8", "user9", "user10"]

# }


#### varibale for strings #####
# variable "string_var" {
#   type        = string
#   default     = "sandesh"
#   description = "variables details"
# }

#### variable for number #####
# variable "number_var" {
#   type        = number
#   default     = "2"
#   description = "variables details through number"
# }

#### variable for list ##### --> call listing
# variable "list_var" {
#   type    = list(any)
#   default = ["shubham", "pranay", "atharv", "akash"]
#   #               0         1         2         3
#   description = "variables details through list"
# }

### variable for map  ##### 
# variable "map_var" {
#   type        = map(any)
#   description = "variables details through map"
#   default = {

#     u1 = "user1"
#     u2 = "user2"
#     u3 = "user3"
#   }

# }

#### variable for any ##### --> combination of all variables
# variable "any_var" {
#   type = any
#   default = {
#     u1 = "sando"
#     u2 = ["user111", "user222", "user333", "user444", "user555"]
#     u3 = 6786
#     u4 = {
#       u1 = "spider"
#       u2 = "throug"
#       u3 = "rahul"
#     }
#   }
#   description = "variables details through number"
# }
