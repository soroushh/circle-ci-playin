terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "eu-west-1"
}

terraform {
  backend "s3" {}
}

resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket"
  regiod = "eu-west-1"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
