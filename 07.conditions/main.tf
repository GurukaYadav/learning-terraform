resource "aws_instance" "web" {
//here count is used whether to create the instances or not//
  count = 0
  instance = var.instance_type == null ? "t3.micro" : var.instance_type
  ami      = "ami-07418f7e626609d5b"

  tags = {
    Name = "Avinash"
  }
}

variable "instance_type" {
  default = null
}