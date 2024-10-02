provider "aws" {
    alias = "us_east_1"
    region = "us-east-1"
}

resource "aws_instance" "instance3" {
    provider = aws.us_east_1
    ami = var.ami_value
    instance_type = var.instance_type_value
}