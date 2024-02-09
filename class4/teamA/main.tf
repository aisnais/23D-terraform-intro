provider "aws" {
    region = "us-east-1"
}

module "team_a" {
    source = "../module"
    name = "ais_rds_sg"
    description = "Ais created rds sg"
    cidr_blocks =  ["192.168.0.0/16"]
    port = 80
    storage = 10
    db_name = "ais_db"
    engine = "mysql"
    engine_version = "5.7"
    instance_class = "db.t3.micro"
    username = "ais"
    password = "aisdb2023"
    snapshot = true
}

output vpc_id {
  value       = module.team_a.vpc_id
}

output rds_arn {
  value       = module.team_a.rds_arn
}

output rds_sg_arn {
  value       = module.team_a.rds_sg_arn
}

