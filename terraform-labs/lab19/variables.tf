variable "vpc_id" {
  type        = string
}

variable "key_name" {
  type        = string
}

variable "public_subnets" {
  type        = map(object({
    cidr_block = string
    az         = string
  }))
}
variable ec2_ami{
      type = string
}
variable instance_type{
      type = string
}
