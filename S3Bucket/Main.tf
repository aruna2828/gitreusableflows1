## backend data for terraform
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }

  backend "remote" {
  hostname = "app.terraform.io"  
  organization = "SonixLabs1"

    workspaces {
      name = "AWSBackup"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

