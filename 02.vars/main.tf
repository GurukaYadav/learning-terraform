//Declaring a variable
variable "a" {
  default = 100
}

//The variable block requires one reference and here "a" is the reference

//Accessing a variable
output "a" {
  value = var.a
}

//The variable can be accessed in 2 ways 1)var.var_name 2)${var.var_name}. If it is only a value,var.var_name is used and if it is combined with other strings, then ${var.var_name} is used

//Accessing a variable in other way
output "x" {
  value = "Value of a = ${var.a}"
}

//Different ways in which inputs are given to variables in Terraform

variable "b" {}
//here input is given through terraform.tfvars file

variable "c" {}
//here the input is give through terraform CLI as -c=300 during terraform apply

variable "d" {}
//here the input is given through shell Environment variable using export TF_VARS_d=400

//Accessing the above variables
output "variables-values" {
  value = "a=${var.a},b=${var.b},c=${var.c} and d=${var.d}"
}


variable "sample" {
  default = [100, 200, "abc"]
}

output "sample" {
  value = var.sample[1]
}