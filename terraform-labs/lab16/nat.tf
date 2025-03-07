resource "aws_eip" "nat_eip" {
  domain = "vpc"
}
resource "aws_nat_gateway" "nat" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public-lab16.id  

  tags = {
    Name = "My NAT Gateway"
  }
}
resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.existing_vpc.id

  tags = {
    Name = "lab16-igw"
  }
}