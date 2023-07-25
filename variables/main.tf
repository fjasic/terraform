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
  type = map()
  default = {key1 = "value1"}
}