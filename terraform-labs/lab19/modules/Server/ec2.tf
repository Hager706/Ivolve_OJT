resource "aws_instance" "nginx" {
  ami           = var.ec2_ami 
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name      = var.key_name
  vpc_security_group_ids = [aws_security_group.nginx.id]

  user_data = <<-EOF
            #!/bin/bash
    sudo yum update -y
    sudo yum install -y httpd
    sudo systemctl start httpd
    sudo systemctl enable httpd
    echo "<h1>Apache Server Running on private  EC2</h1>" | sudo tee /var/www/html/index.html
  EOF
  tags = {
    Name = "nginx-instance"
  }
}