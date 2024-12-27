module "VPC" {
  source = "./modules/vpc"
  cidr_block = "10.0.0.0/16"
}

module "subnet_pub" {
  source = "./modules/subnet"
  subnet_cidr_block = "10.0.1.0/24"
  availability_zone = var.availability_zone
}