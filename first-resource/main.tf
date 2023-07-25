variable "vpcname" {
  type = string
  default = "myvpc"
}

provider "aws" {
  region = "eu-central-1"

}
resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = var.vpcname
  }
}

