#============ VPC =============

resource "aws_vpc" "stw_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    group = var.stack_name
    Name  = "stw_vpc"
  }
}
