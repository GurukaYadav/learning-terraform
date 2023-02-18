resource "aws_instance" "web" {
  count         = 2
  ami           = "ami-07418f7e626609d5b"
  instance_type = "t3.micro"

  tags = {
    Name = "Avinash-${count.index}"
  }
}