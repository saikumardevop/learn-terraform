terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.87.0"
    }
  }
  backend "s3" {

    bucket = "terraform-g20"
    key    = "sai/terraform.tfstate"
    region = "us-east-1"

  }

}

provider "aws" {
  # Configuration options

}