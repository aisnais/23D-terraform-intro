variable "vpc_cidr_block" {
  type        = string
  description = "cidr block for my vpccidr_block"
}

variable "vpc_tags" {
  type        = map(string)
}

variable "subnet_cidr" {
  type        = string
}

variable "subnet_tags" {
  type        = map(string)
}

variable "route_table_cidr" {
  type        = string
}

variable "route_table_tags" {
  type        = map(string)
}

variable "ig_tags" {
  type        = map(string)
}