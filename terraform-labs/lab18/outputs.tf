output "nginx_public_ip" {
  value = aws_instance.nginx_server.public_ip
}

output "apache_private_ip" {
  value = aws_instance.private_web.private_ip
}