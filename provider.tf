# which provider you are connecting to, version
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.4.0"
    }
  }

  backend "s3" {
        bucket = "terraform-k8-course"
        key    = "workspace-1"
        region = "ap-south-1"
        dynamodb_table = "terraform-lock"
    }
}

provider "aws" {
  # Configuration options
  region = "ap-south-1"
}