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

#create internet gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.this.id

  tags = {
    Name = "igw"
  }
}


#create route table --> attach to vpc --> do igw entry in rt
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.this.id
    route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "public_rt"
  }
}

# create private route table 
resource "aws_route_table" "private_rt" {
  vpc_id = aws_vpc.this.id
    route = []
  tags = {
    Name = "private_rt"
  }
}


#add route entry in private_rt from outside using another resource
resource "aws_route" "pvt_route_table" {
  route_table_id            = aws_route_table.private_rt.id
  destination_cidr_block    = "0.0.0.0/0"
  depends_on                = [aws_route_table.private_rt]
  gateway_id = aws_internet_gateway.igw.id
}

# do subnet association
resource "aws_route_table_association" "public_subnet_associate" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public_rt.id
}