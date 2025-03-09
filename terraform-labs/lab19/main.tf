provider "aws" {
  region = "us-east-1" 
}


module "network" {
  source = "./modules/Network"
  vpc_id = var.vpc_id
  public_subnets = var.public_subnets

}

module "server_1" {
  source = "./modules/Server"
  subnet_id = module.network.public_subnet_ids["subnet1"]
  ec2_ami           = var.ec2_ami 
  instance_type = var.instance_type
  key_name = var.key_name
  vpc_id = var.vpc_id

}

module "server_2" {
  source = "./modules/Server"
  subnet_id = module.network.public_subnet_ids["subnet2"]
  ec2_ami            = var.ec2_ami 
  instance_type = var.instance_type
  key_name = var.key_name
  vpc_id = var.vpc_id

}