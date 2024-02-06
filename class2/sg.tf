# ingress: incoming connection, ex: port 22 in security group
# egress: outbound connection

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh_terraform"
  description = "Allow 22 inbound traffic and all outbound traffic"
  vpc_id      = "vpc-5457422e"

  ingress {
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    cidr_blocks     = ["107.206.79.148/32"]
  }

  tags = {
    Name = "allow_ssh"
  }
}