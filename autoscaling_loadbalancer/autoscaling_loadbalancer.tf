# Declare the data source
data "aws_availability_zones" "available" {}
#  state = "available"

# defime AMI
resource "aws_ami" "ubuntu" {
  most_recent = true
  owners = ["099720109477"]
  filter = {
    name = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  name                = "terraform-example"
  virtualization_type = "hvm"
  root_device_name    = "/dev/xvda"

  ebs_block_device {
    device_name = "/dev/xvda"
    snapshot_id = "snap-xxxxxxxx"
    volume_size = 8
  }
}