terraform {
  backend "s3" {
    bucket = "akash-terraform-backend"
    key    = "infra/terraform.tfstate"
    region = "ap-south-1"
  }
}
