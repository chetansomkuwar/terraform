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


#### variable for boolian ##### --> 2 value = true/false
# variable "boolian_var" {
#   type        = bool
#   default     = true
#   description = "variables details through boolian"
# }


# variable "boolian_var" {
#   type        = bool
#   default     = false
#   description = "variables details through boolian"
# }

###############################################################################################
variable "vpc_id" {
  description = "vpc_id of the server"
  type        = string
}

# #variables for ec2 instance

variable "instance_type" {
  description = "set instance type here"
  type        = string
}

variable "availability_zone" {
  description = "set availability_zone here"
  type        = string
}

variable "instance_count" {
  description = "EC2 instance count mention here"
  type        = number
}

variable "enable_public_ip" {
  description = "Mention Enable public IP address to be decide here "
  type        = bool
}

# # variable "project_environment" { 
# #   description = "project name and environment to identify working enviorment of state file"
# #   type        = map(string)
# #   default     = {
# #     project     = "project-alpha",    #key
# #     environment = "dev"               #value
# #   }
# # }

# variable "key_name" {
#   description = "keyname for server"
#   type        = string

# }

# #this for default security group
# variable "security_group" {
#   description = "security group for server"
#   type        = string
# }

#this for customized security group
variable "customized_security_group1" {
  description = "attach created security group here"
  type        = list(any)
}

variable "tag" {
  description = "tags & values"
  type        = string
}
###############################################################################################
