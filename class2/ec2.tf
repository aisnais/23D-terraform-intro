provider "aws" {
    region = "us-east-1"
}

# "ami-0c7217cdde317cfec"
resource "aws_instance" "myec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    Comment = var.comment
  }
}

output "ec2_public_ip" {
    description = "Public IP of ec2 instance"
    value = aws_instance.myec2.public_ip
}
