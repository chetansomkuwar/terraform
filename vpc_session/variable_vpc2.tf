variable "vpc_cidr_block" {
  description = "cidr of vpc"
  type        = string
}

variable "tag" {
  description = "vpc tag via variable"
  type        = map(string)
}

variable "public_subnet" {
  description = "calling public subnet via variable"
  type        = list(string)
}

variable "availability_zone" {
  description = "availability_zone via variable"
  type        = list(string)
}