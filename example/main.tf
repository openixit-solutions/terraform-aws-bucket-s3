terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
}

resource "random_string" "random" {
  length  = 10
  special = false
  upper   = false
}

module "backend_s3_public" {
  source = "../"

  bucket_name      = "opx-s3-public-${random_string.random.id}"
  object_ownership = "ObjectWriter"
  acl              = "public-read"

  cors_rule = [
    {
      allowed_methods = ["GET", "POST", "PUT"]
      allowed_origins = ["*"]
      max_age_seconds = 3600
    }
  ]

  region = "us-west-2"
  tags = {
    Name        = "opx-test"
    Environment = "test"
    Resouce     = "storage"
  }
}

module "backend_s3_private" {
  source = "../"

  bucket_name      = "opx-s3-private-${random_string.random.id}"
  object_ownership = "ObjectWriter"
  acl              = "private"

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true

  cors_rule = [
    {
      allowed_methods = ["GET"]
      allowed_origins = ["*"]
      max_age_seconds = 3600
    }
  ]

  region = "us-west-2"
  tags = {
    Name        = "opx-test"
    Environment = "test"
    Resouce     = "storage"
  }
}
