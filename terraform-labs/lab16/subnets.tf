resource "aws_subnet" "public-lab16" {
  vpc_id = aws_vpc.existing_vpc.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone = "us-east-1a"
  tags = {
    Name = "public-lab16"
  }
}
resource "aws_subnet" "private-lab16" {
  vpc_id = aws_vpc.existing_vpc.id
  cidr_block = "10.0.2.0/24"
  map_public_ip_on_launch = true
  availability_zone = "us-east-1b"
  tags = {
    Name = "private-lab16"
  }
}