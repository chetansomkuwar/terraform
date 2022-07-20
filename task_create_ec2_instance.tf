# #terraform code to launch ec2 instance

# resource "aws_instance" "practice" {
#   ami           = "ami-0fb653ca2d3203ac1"
#   instance_type = "t2.micro"
# # count = 5
#   security_groups = ["security group using Terraform"]

#   tags = {
#     Name = "Terraform-instance"
#   }
# }

# #security group using Terraform

# resource "aws_security_group" "tf_sg" {
#   name        = "security group using Terraform"
#   description = "security group using Terraform"
#   vpc_id      = "vpc-08f53a580588af642"

#   ingress {
#     description      = "HTTPS"
#     from_port        = 443
#     to_port          = 443
#     protocol         = "tcp"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }

#     ingress {
#     description      = "HTTP"
#     from_port        = 80
#     to_port          = 80
#     protocol         = "tcp"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }

#     ingress {
#     description      = "SSH"
#     from_port        = 22
#     to_port          = 22
#     protocol         = "tcp"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }

#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#     ipv6_cidr_blocks = ["::/0"]
#   }

#   tags = {
#     Name = "tf_sg"
#   }
# }

# #create & attach key pair to the instance
