#============ ROUTE TABLES =============

resource "aws_route_table" "stw_rt_private" {
  vpc_id = aws_vpc.stw_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.stw_nat_gw.id
  }

  tags = {
    group = var.stack_name
    Name  = "stw-rt-private"
  }
}
