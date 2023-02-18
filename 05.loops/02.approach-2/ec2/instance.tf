resource "aws_instance" "web" {
  ami           = "ami-07418f7e626609d5b"
  instance_type = "t3.micro"

  tags = {
    Name = "var.nametag"
  }
}

variable "nametag" {}