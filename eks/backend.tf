terraform {
  required_version = "~> 1.13.5" #"~> 1.9.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.25.0"  #"~> 5.49.0"
    }
  }
  backend "s3" {
    bucket         = "eks-tf-coolraj-86"
    region         = "us-east-1"
    key            = "eks/terraform.tfstate"
    #dynamodb_table = "Lock-Files"
    use_lockfile    = true
    encrypt        = true
  }
}

provider "aws" {
  region = var.aws-region
}