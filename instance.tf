
resource "aws_instance" "web" {
    region = "us-east-1"
  ami           = "ami-006d3995d3a6b963b"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}