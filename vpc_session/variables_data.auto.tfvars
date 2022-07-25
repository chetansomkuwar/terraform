vpc_cidr =  "10.0.0.0/16"
public_vpc_cidr = ["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24","10.0.4.0/24"]
availability_zone = ["us-west-2a","us-west-2b"]
tag = {
    purpose = "my_vpc"
}
env = "UAT"
owner = "localuser"
private_vpc_cidr = ["10.0.5.0/24","10.0.6.0/24","10.0.7.0/24","10.0.8.0/24"]