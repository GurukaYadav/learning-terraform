resource "aws_instance" "web" {
  ami           = data.aws_ami.ami.image_id
  instance_type = "t3.micro"
  tags = {
    Name = "Avinash"
  }
}

data "aws_ami" "ami" {
  executable_users = ["self"]
  most_recent      = true
  name_regex       = "base-with-ansible"
  owners           = ["self"]
}