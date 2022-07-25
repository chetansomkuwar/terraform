########################################################################
## create single ec2 instance
# module "ec2_instance" {
#   source  = "terraform-aws-modules/ec2-instance/aws"
#   version = "~> 3.0"

#   name = "single-instance"

#   ami           = "ami-0cff7528ff583bf9a"
#   instance_type = "t2.micro"
#   #  key_name               = "root"
#   monitoring             = true
#   vpc_security_group_ids = ["sg-0a32e0d27189d1f22"]
#   subnet_id              = "subnet-072b5d54ff135b446"

#   tags = {
#     Terraform   = "true"
#     Environment = "dev"
#   }
# }

########################################################################

# # create security group and attach to the ec2 instance
# # (1) firstly we create ec2 instance.
# # (2) secondly cerate security group
# # (3) we attach created security group into created ec2 instance, default security group will replace with new one.
# resource "aws_instance" "demo1" {
#   ami                    = "ami-052efd3df9dad4825" #us-east-1
#   instance_type          = "t2.micro"
#   count                  = 2
#   vpc_security_group_ids = [aws_security_group.tf_sg_01.id] # put refernce name of sg
#   tags = {
#     Name = "myinstance2" # instance name
#   }
# }

#########################################################################

# #Create Security Group
# resource "aws_security_group" "tf_sg_01" { #tf_sg_01 is refernce name
#   name        = "tf_sg_1"                  #[Security Group Name]
#   description = "Allow TLS inbound traffic"
#   vpc_id      = "vpc-0d38f6e75bce4c3e6"
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
#     Name = "tf_sg_1"
#   }
# }

#########################################################################


#  my errors:- 
#     1. Add security group into --> instance creation resource --> vpc_security_group_ids = [aws_security_group.referance_name_of_sg] 
#             refernce name will call the security group id == i used only security_group <-- this one is wrong

#     2. ["aws_security_group.referance_name_of_sg"] is wrong --> [aws_security_group.referance_name_of_sg]
#             here double inverted comma is not allowed here.