resource "aws_instance" "web" {
  ami           = "ami-07418f7e626609d5b"
  instance_type = "t3.micro"
  tags = {
    Name = "Avinash"
  }
}

//data "aws_ami" "ami" {
//  executable_users = ["self"]
//  most_recent      = true
// name_regex       = "base-with-ansible"
// owners           = ["self"]
//}