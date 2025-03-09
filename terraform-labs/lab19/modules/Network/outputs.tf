output "public_subnet_ids" {
  value = { for i, j in aws_subnet.public : i => j.id }
}