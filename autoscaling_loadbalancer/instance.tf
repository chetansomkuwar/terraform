resource "aws_instance" "web-server" {
  ami           = "ami-052efd3df9dad4825"
  instance_type =  "t2.micro"
  count         =  2
  key_name = "paris-key"
  security_groups = ["${aws_security_group.my_sg.name}"]
  user_data =  <<EOF
#! /bin/bash
sudo apt-get update
sudo apt-get install apache2 -y
sudo systemctl reload apache2
sudo rm -rf /var/www/html/index.html
sudo echo "hello everyone $HOSTNAME" >> /var/www/html/index.html
EOF
}








