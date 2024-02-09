variable name {
  type        = string
  description = "SG name"
}

variable description {
  type        = string
  default = "SG managed by Terraform"
  description = "Variable to give description to SG"
}

variable port {
  type        = number
  description = "Port number to allow in SG"
}

variable storage {
  type        = number
  description = "Storage of RDS"
}

variable db_name {
  type        = string
  description = "Database name"
}

variable engine {
  type        = string
  description = "Engine of database"
}

variable engine_version {
  type        = string
  description = "Engine version of database"
}

variable instance_class {
  type        = string
  description = "Instance class of database"
}

variable username {
  type        = string
  description = "Username"
}

variable password {
  type        = string
  description = "Username password"
}

variable snapshot {
  type        = string
  description = "Final snapshot of database"
}

variable cidr_blocks {
  type        = list(string)
  description = "CIDR blocks of Security Group"
}





