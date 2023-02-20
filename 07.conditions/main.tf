resource "aws_instance" "web" {
//count = 0 (here count is used whether to create the instances or not and also we can create the required no.of instances based on the count)
  instance_type = var.instance_type == null ? "t3.micro" : var.instance_type
  ami      = "ami-07418f7e626609d5b"

  tags = {
    Name = "Avinash"
  }
}

variable "instance_type" {
  default = null
}

//here the null value can be overwritten using -var instance_type="" during terraform apply