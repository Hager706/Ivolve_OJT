
variable ec2_ami{
      type = string
}
variable instance_type{
      type = string
}
variable "vpc_id" {
  type        = string
}
variable "subnet_id" {
  type        = string
}

variable "key_name" {
  type        = string
}