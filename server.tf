provider "aws" {
  # Configuration options
  region  = "us-east-1"
  profile = "jarvis"
}

resource "aws_instance" "web-server" {
  ami             = "ami-052efd3df9dad4825"
  instance_type   = "t2.micro"
  count           = 2
  availability_zone = us-east-1a
  key_name        = "jarvis_privatekey"
  security_groups = ["${aws_security_group.my_sg.name}"]
  user_data       = <<EOF
#!/bin/bash
sudo apt-get update
sudo apt-get install apache2 -y
sudo systemctl reload apache2
rm -rfv /var/www/html/index.html
sudo echo "hello everyone, this is my laptop page $HOSTNAME" >> /var/www/html/index.html
EOF
}

resource "aws_instance" "web-server" {
  ami             = "ami-052efd3df9dad4825"
  instance_type   = "t2.micro"
  count           = 2
  availability_zone = us-east-1a
  key_name        = "jarvis_privatekey"
  security_groups = ["${aws_security_group.my_sg.name}"]
  user_data       = <<EOF
#!/bin/bash
sudo apt-get update
sudo apt-get install apache2 -y
sudo systemctl reload apache2
sudo mkdir -p /var/www/html/mobile/
sudo echo "hello world, welcome to my mobile page $HOSTNAME" >> /var/www/html/mobile/index.html
EOF
}

resource "aws_instance" "web-server" {
  ami             = "ami-052efd3df9dad4825"
  instance_type   = "t2.micro"
  count           = 2
  availability_zone = us-east-1a
  key_name        = "jarvis_privatekey"
  security_groups = ["${aws_security_group.my_sg.name}"]
  user_data       = <<EOF
#! /bin/bash
sudo apt-get update
sudo apt-get install apache2 -y
sudo systemctl reload apache2
sudo rm -rf /var/www/html/index.html
sudo echo "hello everyone, this is tab page $HOSTNAME" >> /var/www/html/index.html
EOF
}









