provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "db" {
  ami = "ami-04e601abe3e1a910f"
  instance_type = "t2.micro"

   tags = {
    name = "DB server"
  }
}

resource "aws_instance" "web" {
  ami = "ami-04e601abe3e1a910f"
  instance_type = "t2.micro"

   tags = {
    name = "WEB server"
  }
}

resource "aws_security_group" "sg" {
  name = "Allow HTTPS and HTTP"
  ingress {
    from_port = 443
    to_port = 443
    protocol = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 443
    to_port = 443
    protocol = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_eip" "web_ip" {
  instance = aws_instance.web.id
}


output "PrivateIP" {
  value = aws_instance.db.private_ip
}

output "PublicIP" {
  value = aws_instance.web.public_ip
}