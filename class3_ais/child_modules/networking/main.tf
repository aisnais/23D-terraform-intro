resource "aws_vpc" "my_vpc" {
  cidr_block       = var.vpc_cidr_block #"10.0.0.0/16"

    tags = var.vpc_tags
}

resource "aws_subnet" "my_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = var.subnet_cidr #"10.0.1.0/24"
  tags = var.subnet_tags

}

resource "aws_internet_gateway" "my_gw" {
  vpc_id = aws_vpc.my_vpc.id
  tags = var.ig_tags
}

resource "aws_route_table" "my_route_table" {
  vpc_id = aws_vpc.my_vpc.id
  route {
    cidr_block = var.route_table_cidr #"10.0.1.0/24"
    gateway_id = aws_internet_gateway.my_gw.id
  }
  tags = var.route_table_tags
}

resource "aws_route_table_association" "route_assoc" {
  route_table_id = aws_route_table.my_route_table.id
  subnet_id      = aws_subnet.my_subnet.id
}


