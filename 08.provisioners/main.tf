resource "aws_instance" "web" {
  ami           = "ami-07418f7e626609d5b"
  instance_type = "t3.micro"

  tags = {
    Name = "Avinash"
  }

  connection {
      type     = "ssh"
      user     = "root"
      password = "DevOps321"
      host     = self.public_ip
  }

  provisioner "remote-exec" {
    inline = [
      "uname"
    ]
  }
}