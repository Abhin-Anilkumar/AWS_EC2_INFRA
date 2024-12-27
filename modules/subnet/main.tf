resource "aws_subnet" "subnet" {
  vpc_id            = aws_vpc.stw_vpc.id
  # subnet_cidr_block  = var.subnet_cidr_block
  availability_zone = var.availability_zone
}
