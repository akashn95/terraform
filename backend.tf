terraform {
  backend "s3" {
    bucket = "akash-terraform-backend"
    key    = "infra"
    region = "ap-south-1"
  }
}
