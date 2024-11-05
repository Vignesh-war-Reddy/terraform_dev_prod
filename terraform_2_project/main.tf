# main.tf

provider "aws" {
  region = var.region
}

module "ec2_instance" {
  source        = "./modules/ec2_instance"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  region        = var.region
  instance_name = var.instance_name
  environment   = var.environment
}

output "instance_id" {
  value = module.ec2_instance.instance_id
}

output "public_ip" {
  value = module.ec2_instance.public_ip
}
