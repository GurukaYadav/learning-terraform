resource "aws_instance" "web" {
  ami           = "ami-07418f7e626609d5b"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "Avinash"
  }
}
