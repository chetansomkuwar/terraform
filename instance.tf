
resource "aws_instance" "web" {
  region        = "us-east-1"
  ami           = "ami-052efd3df9dad4825"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}