module "VPC" {
  source = "./modules/vpc"
  cidr_block =             "10.0.0.0/16"
  instance_tenancy = "default"
  name = "abhin-test"
}

module "subnet_public1" {
  source = "./modules/Subnet"
  vpc_id = module.VPC.vpc_id
  subnet_cidr = "10.0.1.0/24"
}

module "subnet_public2" {
  source = "./modules/Subnet"
  vpc_id = module.VPC.vpc_id
  subnet_cidr = "10.0.2.0/24"
}

module "subnet_private1" {
  source = "./modules/Subnet"
  vpc_id = module.VPC.vpc_id
  subnet_cidr = "10.0.3.0/24"
}

module "subnet_private2" {
  source = "./modules/Subnet"
  vpc_id = module.VPC.vpc_id
  subnet_cidr = "10.0.4.0/24"
}

# module "ec2" {
#   source = "./modules/EC2"
#   create            = true
#   name              = "instance"
#   instance_type     = "t3.micro"
#   ami_ssm_parameter = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
#   subnet_id         = module.VPC.public_subnets[1]
#   ami =  "ami-0657605d763ac72a8"
#   associate_public_ip_address = true
#   # key_name          = ""
#   # monitoring          = true                     # Enable detailed monitoring
#   # disable_api_termination    = true                     # Enable termination protection
#   # iam_instance_profile       = "ec2-iam-role-profile"   # Attach IAM Role
#   # placement_group            = "example-placement-group" 
#   depends_on = [module.VPC]
# }
