resource "aws_instance" "web" {
  ami           = var.ami_id #"ami-0e731c8a588258d0d"
  instance_type = var.instance_type #"t2.micro"
  tags = var.instance_tags
}

# resource "aws_security_group" "allow_tls" {
#   name        = "allow_tls"
#   description = "Allow TLS inbound traffic and all outbound traffic"
#   vpc_id      = aws_vpc.my_vpc.id

#   tags = {
#     Name = "allow_tls"
#   }
# }