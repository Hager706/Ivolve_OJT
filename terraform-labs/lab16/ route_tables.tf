resource "aws_route_table" "public_Route_Table" {
  vpc_id = aws_vpc.existing_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "Public Route Table"
  }
}
resource "aws_route_table_association" "public_association" {
  subnet_id      = aws_subnet.public-lab16.id
  route_table_id = aws_route_table.public_Route_Table.id
}

resource "aws_route_table" "private_route" {
  vpc_id = aws_vpc.existing_vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat.id
  }

  tags = {
    Name = "Private Route Table"
  }
}
resource "aws_route_table_association" "private_assoc" {
  subnet_id      = aws_subnet.private-lab16.id
  route_table_id = aws_route_table.private_route.id
}