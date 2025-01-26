terraform {
  required_version = ">= 1.10.5"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket         = "azium-tf-state"        
    key            = "terraform/state.tfstate"
    region         = "us-east-1"            
    encrypt        = true                   
  }
}

provider "aws" {
  region = "us-east-1"
}