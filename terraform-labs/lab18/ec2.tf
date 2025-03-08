resource "aws_instance" "nginx_server" {
  ami           = var.ec2_ami 
  instance_type = var.instance_type
  key_name      = var.key_pair_name 
  subnet_id     = aws_subnet.subnets["Public"].id
  security_groups = [aws_security_group.nginx_sg.id]

  tags = {
    Name = "Nginx-Server"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo yum update -y",
      "sudo amazon-linux-extras enable nginx1",
      "sudo yum install -y nginx",
      "sudo systemctl start nginx",
      "sudo systemctl enable nginx"
    ]
  }

  connection {
    type        = "ssh"
    user        = "ec2-user"
    host        = self.public_ip
    private_key = file(var.key_pair_path)
  }
}

resource "aws_instance" "private_web" {
  ami           = var.ec2_ami 
  instance_type = var.instance_type
  subnet_id     = aws_subnet.subnets["Private"].id
  security_groups = [aws_security_group.private_instance_sg.id]

  tags = {
    Name = "Private-Web-Server"
  }

  user_data = <<-EOF
    #!/bin/bash
    sudo yum update -y
    sudo yum install -y httpd
    sudo systemctl start httpd
    sudo systemctl enable httpd
    echo "<h1>Apache Server Running on Private EC2</h1>" | sudo tee /var/www/html/index.html
  EOF
}