resource "aws_route_table_association" "stw_rta_public_1" {
  subnet_id      = aws_subnet.stw_subnet_public_1.id
  route_table_id = aws_route_table.stw_rt_public.id
}
