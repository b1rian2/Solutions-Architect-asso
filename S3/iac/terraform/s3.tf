resource "aws_s3_bucket" "my-s3-bucket-bc" {
    tags = {
        Name        = "My bucket bc"
        Environment = "Dev"
    }
}