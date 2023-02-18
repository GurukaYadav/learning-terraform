variable "no-of-instances" {
  default = 2
}

resource "aws_instance" "web" {

  count         = var.no-of-instances
  ami           = "ami-07418f7e626609d5b"
  instance_type = "t3.micro"

  tags = {
    Name = "Avinash-${count.index+1}"
  }
}