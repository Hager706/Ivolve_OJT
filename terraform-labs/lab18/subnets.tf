resource "aws_subnet" "subnets" {
  for_each = var.subnets

  vpc_id                  = aws_vpc.mainvpc.id
  cidr_block              = each.value.cidr_block
  availability_zone       = each.value.az
  map_public_ip_on_launch = each.value.is_public

  tags = {
    Name = each.key
  }
}