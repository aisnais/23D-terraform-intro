output vpc_id {
  value       = data.aws_vpc.default.id
  description = "Output of default VPC ID"
}

output rds_sg_arn {
    value = aws_security_group.rds_sg.arn
}

output rds_arn {
    value = aws_db_instance.default.arn
}

