# ## create single ec2 instance

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

## create new VPC
module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "jarvis-vpc"
  cidr = "172.50.0.10/24"

  azs             = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = true
  enable_vpn_gateway = true

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}