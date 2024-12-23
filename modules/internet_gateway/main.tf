#============ INTERNET GATEWAY =============

resource "aws_internet_gateway" "stw_gw" {
  vpc_id = aws_vpc.stw_vpc.id

  tags = {
    group = var.stack_name
    Name  = "stw_gw"
  }
}
