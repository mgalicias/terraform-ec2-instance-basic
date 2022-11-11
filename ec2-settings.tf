terraform {
    required_version = "~> 1.3.4"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "~> 4.39.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = var.region_ohio
  profile = "default"
}