terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.66.0"
    }
  }
}
 module "vpc" {
   source = "./modules/vpc"
 }