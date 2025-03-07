provider "aws" {
  region = "us-east-1"
}
resource "aws_vpc" "vpc_lab17" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "vpc_lab17",
  }
}
resource "aws_subnet" "public_subnet" {
  vpc_id = aws_vpc.vpc_lab17.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = true
  availability_zone = "us-east-1a"

  tags = {
    Name = "Public Subnet"
  }
}
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc_lab17.id

  tags = {
    Name = "Internet Gateway"
  }
}
resource "aws_route_table" "public_route" {
  vpc_id = aws_vpc.vpc_lab17.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "Public Route Table"
  }
}
resource "aws_route_table_association" "public_assoc" {
  subnet_id = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_route.id
}

resource "aws_security_group" "ec2_sg" {
  vpc_id = aws_vpc.vpc_lab17.id

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

 ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
   tags = {
    Name = "nginx-security-group"
  }
}
resource "aws_instance" "web_server" {
  ami                    = "ami-05b10e08d247fb927"  
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public_subnet.id
  associate_public_ip_address = true
  security_groups        = [aws_security_group.ec2_sg.id]
    user_data = base64encode(<<-EOF
              #!/bin/bash
               yum update -y
               yum install -y nginx
               systemctl start nginx
               systemctl enable nginx
               echo "Hello World from $(hostname -I)" > /usr/share/nginx/html/index.html
                EOF
  )
   lifecycle {
   create_before_destroy = true
  }
  tags = {
    Name = "Public EC2 Instance"
  }
  
}
