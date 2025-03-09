vpc_id = "vpc-072de937bf28a6aea" 
key_name = "my-key" 
public_subnets = {
  "subnet1" = {
    cidr_block = "10.0.1.0/24"
    az         = "us-east-1a"
  },
  "subnet2" = {
    cidr_block = "10.0.2.0/24"
    az         = "us-east-1b"
  }
}
ec2_ami ="ami-05b10e08d247fb927"
instance_type ="t2.micro"