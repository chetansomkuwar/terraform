variable "vpc_cidr_block" {
  description = "cidr of vpc"
  type        = string
}

variable "tag" {
  description = "vpc tag via variable"
  type        = map(string)
}

variable "public_subnet" {
  description = "vpc tag via variable"
  type        = map(string)
}