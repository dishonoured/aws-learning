resource "aws_s3_bucket" "exampleResourceId" {
    bucket = "dm-tf-test-bucket-name-1"

    tags = {
        Name        = "My bucket"
        Environment = "Dev"
    }
}