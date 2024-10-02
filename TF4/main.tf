provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "new_instance4" {
  ami = "ami-04cdc91e49cb06165"
  instance_type = "t3.micro"
}

resource "aws_s3_bucket" "new_s3_bucket" {
  bucket = "new-terraform-s3-bucket"
}

resource "aws_dynamodb_table" "new_terraform_lock" {
  name = "terraform-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}