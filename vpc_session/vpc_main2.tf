provider "aws" {
  # Configuration options
  region  = "us-east-1"
  profile = "jarvis"
}
resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr_block
  instance_tenancy = "default"
  tags = var.tag
}

resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_subnet
  tags 
  tags = {
    Name = "Main"
  }
}