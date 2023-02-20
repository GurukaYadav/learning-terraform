variable "list" {
  default = ["t2.micro", "t4.micro"]
}

output "list" {
  value = length(var.list)
}

variable "map" {
  default = {
    "t2.micro" = 2,
    "t4.micro" = 1
  }
}

output "map" {
  value = length(var.map)
}
