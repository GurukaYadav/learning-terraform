module "ec2" {
  source = "./ec2"
}

module "security-group" {
  source = "./security-group"
}

terraform {
  backend "s3" {
    bucket = "terraform-sfiles"
    key    = "example-2/terraform.tfstate"
    region = "us-east-1"
  }
}