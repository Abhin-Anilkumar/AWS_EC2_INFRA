output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.stw_vpc.id
}

output "cidr_block" {
  description = "The CIDR block of the VPC"
  value       = aws_vpc.stw_vpc.cidr_block
}