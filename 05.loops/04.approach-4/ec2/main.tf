resource "aws_instance" "web" {
  count         = var.instance_count
  ami           = "ami-07418f7e626609d5b"
  instance_type = var.instance_type

  tags = {
    Name = "Avinash-${count.index+1}"
  }
}

variable "instance_type" {}
variable "instance_count" {}