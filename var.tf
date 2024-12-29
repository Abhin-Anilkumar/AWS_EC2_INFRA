variable "name" {
  type = string
  default = "abhin-test"
}

variable "subnet_name" {
  type = string
  default = try(aws_subnet)
}