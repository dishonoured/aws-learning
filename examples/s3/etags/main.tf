terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "5.26.0"
        }
    }
}

# https://registry.terraform.io/providers/terraform-providers/aws/latest/docs
provider "aws" {
    
}

resource "aws_s3_bucket" "default" {
    tags = {
        Environment = "Dev"
    }
}

resource "aws_s3_object" "object" {
    bucket = aws_s3_bucket.default.id
    key    = "myfile.txt"
    source = "myfile.txt"

    etag = filemd5("myfile.txt")
    }