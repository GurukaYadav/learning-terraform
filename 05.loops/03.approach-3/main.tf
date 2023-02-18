//sometimes we need to iterate the loop based on the no of inputs
//so here i want to change the instance_types for 2 instances

resource "aws_instance" "web" {

  count         = length(var.instance_type)
  ami           = "ami-07418f7e626609d5b"
  instance_type = var.instance_type[count.index]

  tags = {
    Name = "Avinash-${count.index+1}"
  }
}

variable "instance_type" {
  default = ["t3.micro", "t2.small"]
}