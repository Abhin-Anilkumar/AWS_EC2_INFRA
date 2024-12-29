output "sunid" {
  description = "The ID of the instance"
  value = try(aws_subnet.main.id)
}