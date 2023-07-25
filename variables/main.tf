variable "vpcname" {
  type = string
  default = "myvpc"
}

variable "sshport" {
  type = number
  default = 22
}

variable "switch" {
  type = bool
  default = false
}

variable "list" {
  type = list(string)
  default = [ "123", "345" ]
}

variable "mymap" {
  type = map(string)
  default = {key1 = "value1"}
}

variable "inputname" {
  type = string
  description = "value"
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = var.inputname
  }
}

output "vpc_id" {
  value = aws_vpc.my_vpc.id
}

variable "mytuple" {
  type = tuple([ string, number, string ])
  default = ["cat", 1, "dog"]
}

variable "myobject" {
  type = object({name = string, port = list(number)})
  default = {
    name = "FJ"
    port = [22,25,80]
  }
}