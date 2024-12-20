terraform {
  required_version = ">= 1.9.3, < 2.0" # Broader version constraint to include v1.10.2
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "my-ews-baket112212"
    region         = "us-east-2"
    key            = "eks/terraform.tfstate"
    dynamodb_table = "Lock-Files"
    encrypt        = true
  }
}

provider "aws" {
  region  = var.aws-region
}
