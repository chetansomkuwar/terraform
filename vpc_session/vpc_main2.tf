resource "aws_vpc" "main" {
  cidr_block       = var.vpc_cidr_
  instance_tenancy = "default"

  tags = {
    Name = "jarvis_vpc"
  }
}