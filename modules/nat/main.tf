#============ NAT GATEWAY =============

resource "aws_nat_gateway" "stw_nat_gw" {
  allocation_id = aws_eip.stw_eip.id
  subnet_id     = aws_subnet.stw_subnet_public_1.id

  tags = {
    Name  = "stw_nat_gw"
    group = var.stack_name
  }
}

resource "aws_eip" "stw_eip" {
  tags = {
    group = var.stack_name
    Name  = "stw_eip"
  }
}
