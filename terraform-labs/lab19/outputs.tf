output "ec2_public_ips" {
  value       = [module.server_1.public_ip, module.server_2.public_ip]
}