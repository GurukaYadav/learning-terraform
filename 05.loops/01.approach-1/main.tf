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

//Here we have the count of instances(multiple instances),so to get the output of all the instaces "*" is used
output "public_ip-address" {
  value = aws_instance.web.*.public_ip
}