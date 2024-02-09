resource "aws_db_instance" "default" {
  allocated_storage    = var.storage 
  db_name              = var.db_name
  engine               = var.engine
  engine_version       = var.engine_version 
  instance_class       = var.instance_class
  username             = var.username 
  password             = var.password 
  vpc_security_group_ids = [aws_security_group.rds_sg.id]
  skip_final_snapshot  = var.snapshot 
}