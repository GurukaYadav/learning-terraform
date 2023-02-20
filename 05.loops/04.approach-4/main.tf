//here count of a map you cannot do.Whereas you can do count of a list
//what if we have a case where we need to create multiple instance based on a particular instance type

resource "aws_instance" "web" {

  count         = length(var.instance_type)
  ami           = "ami-07418f7e626609d5b"
  instance_type = var.instance_type[count.index]

  tags = {
    Name = "Avinash-${count.index+1}"
  }
}

variable "instance_type" {
  default = {
    "t3.micro" = 1,
    "t2.small" = 2
  }
}

//variable "instance_type" {
//  default = {
//    "t3.micro" = ami-07418f7e626609d5b,
//    "t2.small" = ami-07418f7e626609657
//  }
//}
