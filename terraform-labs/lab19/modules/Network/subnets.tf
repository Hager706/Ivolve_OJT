resource "aws_subnet" "public" {
  for_each = var.public_subnets
  vpc_id            = var.vpc_id
  cidr_block        = each.value.cidr_block
  availability_zone = each.value.az
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-${each.key}"
  }
}