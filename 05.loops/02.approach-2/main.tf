module "instance" {
  source = ./ec2
  count = 2
  nametag = "Avinash-${count.index+1}"
}

