resource "aws_eip" "nat_eip" {
  domain = "vpc"
}
resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.subnets["Public"].id 
  tags = {
    Name = "NAT-Gateway"
  }
}