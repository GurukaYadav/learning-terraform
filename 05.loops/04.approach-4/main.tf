//here count of a map you cannot do.Whereas you can do count of a list
//what if we have a case where we need to create multiple instance based on a particular instance type

module "ec2" {
  source = "./ec2"
  for_each = var.instance
  instance_type = each.key
  instance_count = each.value
}


variable "instance" {
  default = {
    "t3.micro" = 1,
    "t2.small" = 2
  }
}

//variable "instance_type" {
//  default = {
//    "t3.micro" = ami-07418f7e626609d5b,
//    "t2.small" = ami-07418f7e626609657
//  }
//}

//resource "azurerm_resource_group" "rg" {
//  for_each = {
//    a_group = "eastus"
//    another_group = "westus2"
//  }
//  name     = each.key
//  location = each.value
//}