terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region  = "us-east-1"
  profile = "terraform-user"
}

# stores the terraform state file in s3
terraform {
  backend "s3" {
    bucket  = "tong-terraform-remote-state"
    key     = "terraform.tfstate.dev"
    region  = "us-east-1"
    profile = "terraform-user"
  }
}
