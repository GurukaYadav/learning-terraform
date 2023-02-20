resource "aws_instance" "web" {
  ami           = "ami-07418f7e626609d5b"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "Avinash"
  }

}
//here we are keeping the connection inside the provisoner. If you have multi provisoners and you want to use the same connection for all provisioners, you can keep the connection thing outsied of provisoner.
//Also, sometimes I want the created server as it is and I want ot change something inside that server. So, thata the reason we are using the null_resource thing
//Null resource has a property to allow you to re-trigger the full resource

resource "null_resource" "null" {
  provisioner "remote-exec" {
    connection {
      type     = "ssh"
      user     = "root"
      password = "DevOps321"
      host     = aws_instance.web.public_ip
    }
    inline = [
      "uname"
    ]
  }
  triggers = {
    a = timestamp()
  }
  connection {
    type     = "ssh"
    user     = "root"
    password = "DevOps321"
    host     = aws_instance.web.public_ip
  }
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = "vpc-0866353c733e68495"

  ingress {
    description      = "SSH from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}