# locals {
#   user_data = <<EOF
# #! /bin/bash
# suedo apt-get updat -y
# sudo apt-get install openjdk-8-jdk -y
# sudo wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
# sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
# sudo apt-get update -y
# sudo apt-get install jenkins -y
# sudo systemctl start jenkins
# sudo systemctl enable jenkins
# sudo apt-get update -y
# sudo apt install nfs-common -y
# sudo mkdir -p /mnt/chetan
# sudo echo "${aws_efs_file_system.this.dns_name}:/ /mnt/chetan nfs4 defaults 0 0" | sudo tee -a >> /etc/fstab
# sudo mount -a
# EOF
# }


