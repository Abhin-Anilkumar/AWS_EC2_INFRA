#============ VPC =============

resource "aws_vpc" "stw_vpc" {
  cidr_block = var.cidr_block
}
