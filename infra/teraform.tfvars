vpc_name = "my-vpc"
vpc_cidr = "10.0.0.0/16"

azs = [
  "eu-west-1a",
  "eu-west-1b",
  "eu-west-1c"
]

public_subnets = [
  "10.0.101.0/24",
  "10.0.102.0/24",
  "10.0.103.0/24"
]

private_subnets = [
  "10.0.1.0/24",
  "10.0.2.0/24",
  "10.0.3.0/24"
]

enable_nat_gateway = true
enable_vpn_gateway  = false

environment = "dev"

instance_name = "single-instance"
instance_type = "t3.micro"
key_name      = "user1"