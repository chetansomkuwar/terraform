variable "vpc_cidr" {
   type     = string
}
variable "tag" {
   type     = map(string)
}
variable "public_vpc_cidr" {
   type     = list(string)
}
variable "private_vpc_cidr" {
   type     = list(string)
}
variable "availability_zone" {
   type     = list(string)
}
variable "env" {
   type     = string
}
variable "owner" {
   type     = string
}