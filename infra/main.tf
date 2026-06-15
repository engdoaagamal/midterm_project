module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = var.vpc_name
  cidr = var.vpc_cidr

  azs             = var.azs
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets

  //enable_nat_gateway = var.enable_nat_gateway
 // enable_vpn_gateway = var.enable_vpn_gateway

  tags = {
    Terraform   = "true"
    Environment = var.environment
  }
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name          = var.instance_name
  instance_type = var.instance_type
  key_name      = var.key_name
  monitoring    = true

  subnet_id = module.vpc.public_subnet_1

  tags = {
    Terraform   = "true"
    Environment = var.environment
  }
}