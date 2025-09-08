terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
       version = "6.12.0"
    }
  }
}


provider "aws" {
  region     = "us-east-1"  # or your preferred region
  access_key = "AKIATE2YZM62ORTAZREW"       # optional if using environment variables
  secret_key = "6U49mZCKHMUXRfM/Uz5pRRHuZV+YqfCr7mHf2aIY"       # optional if using environment variables
}

terraform {
  backend "s3" {
    bucket = "naresh-aws-test"
    key = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "DynamoDbLock"
  }
}
