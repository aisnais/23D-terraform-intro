provider "aws" {
  region = "us-east-1"
}

module "networking" {
  source  = "./child_modules/networking"
  vpc_cidr_block = "10.0.0.0/16"
  vpc_tags = {
    Name = "my_vpc"
  }
  subnet_cidr = "10.0.1.0/24"
  subnet_tags = {
    Name = "my_subnet"
  }
  route_table_cidr = "0.0.0.0/0"
  route_table_tags = {
    Name = "my_route_table"
  }
  ig_tags = {
    Name = "my_internet_gateway"
  }
}

module "servers" {
  source  = "./child_modules/servers" 
  ami_id = "ami-0e731c8a588258d0d"
  instance_type = "t2.micro"
  instance_tags = {
    Name = "my_ec2"
  }
}

