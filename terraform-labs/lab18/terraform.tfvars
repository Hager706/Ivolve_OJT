region = "us-east-1"
vpc_cidr = "10.0.0.0/16"

subnets = {
  Public  = { cidr_block = "10.0.1.0/24", az = "us-east-1a", is_public = true }
  Private = { cidr_block = "10.0.2.0/24", az = "us-east-1b", is_public = false }
}
pub_cidr ="0.0.0.0/0"
ec2_ami ="ami-05b10e08d247fb927"
instance_type ="t2.micro"
key_pair_name = "my-key"
key_pair_path = "~/.ssh/my-key.pem"

