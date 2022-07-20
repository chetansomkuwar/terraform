
resource "aws_instance" "web" {
  # region        = "us-east-1"
  ami           = "ami-0cff7528ff583bf9a"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}