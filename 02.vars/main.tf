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