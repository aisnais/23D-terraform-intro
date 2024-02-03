provider "aws" {
    region = "us-east-1"
}

resource "aws_vpc" "maratvpc" {
  cidr_block = "10.100.0.0/16"
  tags = {
    Name = "vpc-marat"
    Comment = "Managed by terraform"
  }
}

