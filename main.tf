module "VPC" {
  source = "./modules/vpc"
  name            = "my-vpc"
  create_vpc      = true
  cidr            = "10.0.0.0/16"
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.3.0/24", "10.0.4.0/24"]
  enable_nat_gateway = true
  azs = ["us-west-1"]
  tags = {
  "Name" = "my-vpc" 
}
  
}

# module "subnet_pub" {
#   source = "./modules/subnet"
#   subnet_cidr_block = "10.0.1.0/24"
#   availability_zone = var.availability_zone
#   vpc_id             = module.VPC.vpc_id
# }