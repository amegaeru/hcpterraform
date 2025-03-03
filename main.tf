terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  cloud {
    organization = "test_ou"

    workspaces {
      name = "hcpterraform"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-terraform-s3-bucket-123456asdsasdfdsdff"
}
