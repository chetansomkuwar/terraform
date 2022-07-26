provider "aws" {
  # Configuration options
  region  = "us-east-1"
  profile = "jarvis"
}
# resource "aws_instance" "demo" {
#   ami           = "ami-0cff7528ff583bf9a" # us-west-2
#   instance_type = "t2.micro"
# }
resource "aws_vpc" "this" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = "default"
  #   tags = var.tag
  #tags = merge(var.tag, {"environment" = var.env}, {"owner" = var.owner})
  tags = merge(var.tag, { "owner" = format("%s_%s", var.env, var.owner) })
}
resource "aws_subnet" "public" {
  count             = length(var.public_vpc_cidr)
  vpc_id            = aws_vpc.this.id
  cidr_block        = var.public_vpc_cidr[count.index]
  availability_zone = element(var.availability_zone, count.index)
  tags              = { "environment" = var.env }
}
resource "aws_subnet" "private" {
  count             = length(var.private_vpc_cidr)
  vpc_id            = aws_vpc.this.id
  cidr_block        = var.private_vpc_cidr[count.index]
  availability_zone = element(var.availability_zone, count.index)
  tags              = { "environment" = var.env }
}