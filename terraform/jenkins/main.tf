provider "aws" {
    region = "us-east-2"
}

variable "name" {
    description = "Name the instance on deploy"
}

resource "aws_instance" "devops_01" {
    ami = "ami-0fa49cc9dc8d62c84" #amazon_ami
    instance_type = "t2.micro"
    key_name = "devops_01"

    tags = {
        Name = "${var.name}"
    }
}