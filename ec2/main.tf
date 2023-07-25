provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "ec2" {
  ami = "ami-04e601abe3e1a910f"
  instance_type = "t2.micro"
}