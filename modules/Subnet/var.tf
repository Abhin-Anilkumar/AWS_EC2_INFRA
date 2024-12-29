variable "create" {
  description = "Whether to create an instance"
  type        = bool
  default     = true
}

variable "vpc_id" {
  type = string
}

variable "subnet_cidr" {
  type = string
}