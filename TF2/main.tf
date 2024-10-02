provider "aws" {
  region = "us-east-1"
}

variable "ami_value" {
    type = string
    default = "ami-0ebfd941bbafe70c6"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

resource "aws_instance" "instance2" {
  ami = var.ami_value
  instance_type = var.instance_type
}

output "public_ip_address" {
  value = aws_instance.instance2.public_ip
}