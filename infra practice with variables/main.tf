# # # RSA key of size 4096 bits
# # resource "tls_private_key" "demo_key" {
# #   algorithm = "RSA"
# #   rsa_bits  = 4096
# # }

# # resource "aws_key_pair" "this" {
# #   key_name   = "northvergenia_public_key"
# #   public_key = tls_private_key.demo_key.public_key_openssh
# # }

# ##############################################################################
# # # elastic ip to ec2 instance
# # resource "aws_eip" "lb" {
# #   instance = aws_instance.web.id
# #   vpc      = true
# # }
# #(not works in count variable)
# ##############################################################################
# # create efs and attach to ec2 instance in encrypted mode
# resource "aws_efs_file_system" "this" {
#   creation_token = "${var.tag}_prod"
#   encrypted      = true

#   tags = {
#     Name = "${var.tag}_prod"
#   }
# }

# resource "aws_efs_mount_target" "this" {
#   file_system_id  = aws_efs_file_system.this.id
#   subnet_id       = "subnet-0806e037bdfb4a34a"
#   security_groups = [aws_security_group.tf_sg_02.id]
# }

# resource "aws_efs_access_point" "this" {
#   file_system_id = aws_efs_file_system.this.id
# }

# ##############################################################################

# #Create Security Group
# resource "aws_security_group" "tf_sg_02" {
#   name        = "tf_sg_1" #[Security Group Name]
#   description = "Allow TLS inbound traffic"
#   vpc_id      = var.vpc_id
#   #need vpc id because security group is bounded with vpc

#   ingress {
#     description = "TLS from VPC"
#     from_port   = 22
#     to_port     = 22
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"] # allow traffic from all IP Address
#     #    ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
#   }

#   ingress {
#     description = "TLS from VPC"
#     from_port   = 443
#     to_port     = 443
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"] # allow traffic from all IP Address
#     #    ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
#   }
#   ingress {
#     description = "TLS from VPC"
#     from_port   = 2049
#     to_port     = 2049
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"] # allow traffic from all IP Address
#     #    ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
#   }
#   ingress {
#     description = "TLS from VPC"
#     from_port   = 8080
#     to_port     = 8080
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"] # allow traffic from all IP Address
#     #    ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
#   }

#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = "-1"
#     cidr_blocks = ["0.0.0.0/0"] # allow traffic from all IP Address
#     #    ipv6_cidr_blocks = ["::/0"]
#   }
#   tags = {
#     Name = "${var.tag}_security_group"
#   }
# }

# # filter the AMI Image by owner id & AMI Image Location
# data "aws_ami" "ubuntu" {
#   most_recent = true

#   filter {
#     name   = "name"
#     values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   owners = ["099720109477"] # Canonical
# }

# #######################################################################################

# # now, create ec2 instance
# resource "aws_instance" "web" {
#   ami               = data.aws_ami.ubuntu.id
#   instance_type     = var.instance_type
#   availability_zone = var.availability_zone
#   #  count                       = var.instance_count
#   associate_public_ip_address = var.enable_public_ip
#   #  tags = var.project_environment
#   #  key_name = var.key_name
#   key_name = aws_key_pair.this.key_name
#   #  security_groups = var.security_group
#   vpc_security_group_ids = [aws_security_group.tf_sg_02.id]
#   user_data              = local.user_data
#   tags = {
#     Name = "${var.tag}_prod"
#   }
# }

# output "aws_instance" {
#   value = aws_instance.web
# }


