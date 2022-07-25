resource "aws_vpc" "main" {
  cidr_block       = var.vpc
  instance_tenancy = "default"

  tags = {
    Name = "jarvis_vpc"
  }
}