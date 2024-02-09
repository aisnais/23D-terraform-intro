data "aws_vpc" "default" {
    default = true
}


resource "aws_security_group" "rds_sg" {
  name        = var.name
  description = var.description
  vpc_id      = data.aws_vpc.default.id

  ingress {
    from_port        = var.port
    to_port          = var.port
    protocol         = "tcp"
    cidr_blocks      = var.cidr_blocks
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.name
  }
}