terraform {
  required_providers {
    aws ={
        source = "hashicop/aws"
        version = "6.50.2"
    }
  }
}

provider "aws" {
    region ="us-east-1" 
}        