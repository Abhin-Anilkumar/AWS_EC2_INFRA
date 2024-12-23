resource "aws_subnet" "stw_subnet_private_1" {
  vpc_id            = aws_vpc.stw_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "eu-west-1a"

  tags = {
    group = var.stack_name
    Name  = "stw_subnet_private_1"
  }
}
