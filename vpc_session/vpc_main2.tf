provider "aws" {
  # Configuration options
  region  = "us-east-1"
  profile = "jarvis"
}
resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr_block
  instance_tenancy = "default"
  tags
  tags = {
    Name = "var.tag"
  }
}

resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Main"
  }
}