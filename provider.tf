terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.53.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
  access_key = "AKIAVO3IF53SBCVLFLV6"
  secret_key = "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"
}
