output "vpc_id" {
  value = module.vpc.vpc_id
}

output "public_subnet_1" {
  value = module.vpc.public_subnet_1
}

output "ec2_public_ip" {
  value = module.ec2_instance.public_ip
}