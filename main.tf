terraform {
  required_version = ">= 0.12.0"
}

provider "aws" {
  region  = var.region
}

resource "aws_s3_bucket" "s3-bucket" {
  bucket = "mune183com-bucket"
  acl    = "private"#add test

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
