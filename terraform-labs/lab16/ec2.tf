 resource "aws_instance" "web_server" {
  ami                    = "ami-05b10e08d247fb927"  
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public-lab16.id
  associate_public_ip_address = true
  security_groups        = [aws_security_group.ec2_sg.id]
    user_data = base64encode(<<-EOF
              #!/bin/bash
              yum update -y
              yum install -y httpd
              systemctl start httpd
              systemctl enable httpd
              echo "Hello World from $(hostname -I)" > /var/www/html/index.html
                EOF
  )
  
  tags = {
    Name = "Public EC2 Instance"
  }
    provisioner "local-exec" {
    command = "echo ${self.public_ip} > ec2-ip.txt"
  }
}