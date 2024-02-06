provider "aws" {
    region = "us-east-1"
}

resource "aws_s3_bucket" "mys3bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

variable bucket_name {
  type        = string
  description = "Name of the S3 bucket"
}
