terraform {
  backend "s3" {
    bucket = "new-terraform-s3-bucket"
    region = "eu-north-1"
    key = "backendkey/terraform.tfstate"
    dynamodb_table = "terraform-lock"
  }
}