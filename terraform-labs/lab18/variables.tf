variable region{
      type = string
}
variable vpc_cidr{
      type = string
}

variable "subnets" {
  description = "Map of subnets"
  type = map(object({
    cidr_block = string
    az         = string
    is_public  = bool
  }))
}
variable pub_cidr{
      type = string
}
variable ec2_ami{
      type = string
}
variable instance_type{
      type = string
}
variable key_pair_name{
      type = string
}
variable "key_pair_path" {
  type = string
}