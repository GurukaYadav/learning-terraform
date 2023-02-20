resource "aws_instance" "web" {
  ami           = data.aws_ami.example.image_id
  instance_type = "t3.micro"
  tags = {
    Name = "Avinash"
  }
}

data "aws_ami" "example" {
  executable_users = ["self"]
  most_recent      = true
  name_regex       = "base-with-ansible"
  owners           = ["self"]
}