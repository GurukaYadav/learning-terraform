module "instance" {
  source = "./ec2"
  SGID = module.sg.SGID
}

module "sg" {
  source = "./security-group"
}

terraform {
  backend "s3" {
    bucket = "terraform-sfiles"
    key    = "example-2/terraform.tfstate"
    region = "us-east-1"
  }
}