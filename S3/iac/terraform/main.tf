terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.25.0"
    }
  }
}

provider "aws" {
  # Configuration options
}

module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  acl    = "private"

  control_object_ownership = true
  object_ownership         = "ObjectWriter"

  versioning = {
    enabled = true
  }
}