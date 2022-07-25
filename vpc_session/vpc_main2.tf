provider "aws" {
  # Configuration options
  region  = "us-east-1"
  profile = "jarvis"
}
resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr_block
  instance_tenancy = "default"

  tags = {
    Name = "var.tag"
  }
}