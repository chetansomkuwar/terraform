# # Declare the data source
# data "aws_availability_zones" "available" {}
# #  state = "available"

# # defime AMI
# resource "aws_ami" "ubuntu" {
#   most_recent = true
#   owners = ["099720109477"]
#   filter = {
#     name = "name"
#     values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
#   }
# }

module "alb" {
  source  = "terraform-aws-modules/alb/aws"
  version = "~> 6.0"

  name = "my-alb"

  load_balancer_type = "application"

  vpc_id          = "vpc-0a807348fb2cec222"
  subnets         = ["subnet-04c97d3e3d58741fe", "subnet-0129688326e642a66"]
  security_groups = ["sg-0ee859fd6cfcacc26", "sg-014cbb5be97e19501"]

  access_logs = {
    bucket = "my-alb-logs"
  }

  target_groups = [
    {
      name_prefix      = "pref-"
      backend_protocol = "HTTP"
      backend_port     = 80
      target_type      = "instance"
      targets = {
        my_target = {
          target_id = "i-0123456789abcdefg"
          port      = 80
        }
        my_other_target = {
          target_id = "i-a1b2c3d4e5f6g7h8i"
          port      = 8080
        }
      }
    }
  ]

  https_listeners = [
    {
      port               = 443
      protocol           = "HTTPS"
      certificate_arn    = "arn:aws:iam::123456789012:server-certificate/test_cert-123456789012"
      target_group_index = 0
    }
  ]

  http_tcp_listeners = [
    {
      port               = 80
      protocol           = "HTTP"
      target_group_index = 0
    }
  ]

  tags = {
    Environment = "Test"
  }
}