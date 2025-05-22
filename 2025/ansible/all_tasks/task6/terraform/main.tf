# dev-infra
module "dev-infra" {
    source = "./infra"
    env = "dev"
    instance_count = 1
    instance_type = "t2.micro"
    ami = "ami-0df368112825f8d8f"
    volume_size = 8
}

# stg-infra
module "stg-infra" {
    source = "./infra"
    env = "stg"
    instance_count = 1
    instance_type = "t2.micro"
    ami = "ami-0df368112825f8d8f"
    volume_size = 8
}

# prd-infra
module "prd-infra" {
    source = "./infra"
    env = "prd"
    instance_count = 1
    instance_type = "t2.micro"
    ami = "ami-0df368112825f8d8f"
    volume_size = 9
}

output "dev_infra_ec2_public_ips" {
  value = module.dev-infra.ec2_public_ips
}


output "stg_infra_ec2_public_ips" {
  value = module.stg-infra.ec2_public_ips
}


output "prd_infra_ec2_public_ips" {
  value = module.prd-infra.ec2_public_ips
}
	
