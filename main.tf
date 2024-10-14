# VPC Module
module "vpc" {
  source           = "./modules/vpc"
  vpc_name         = var.vpc_name
  cidr_block       = var.vpc_cidr_block
  public_subnets   = var.public_subnets
  private_subnets  = var.private_subnets
  availability_zones = var.availability_zones
}

# EC2 Module
module "ec2" {
  source              = "./modules/ec2"
  instance_type       = var.instance_type
  ami_id              = var.ami_id
  vpc_security_group_ids = module.vpc.security_group_ids
  subnet_id           = module.vpc.public_subnet_ids[0]   # Deploy in the first public subnet
  key_name            = var.key_name
  ssh_ip              = var.ssh_ip
}

# S3 Module
module "s3" {
  source                = "./modules/s3"
  bucket_name           = var.s3_bucket_name
  versioning            = var.s3_versioning
  allowed_principal_arn = var.allowed_principal_arn
}

# Outputs
output "ec2_public_ip" {
  description = "The public IP of the EC2 instance"
  value       = module.ec2.public_ip
}

output "s3_bucket_name" {
  description = "The name of the S3 bucket"
  value       = module.s3.bucket_name
}

output "vpc_id" {
  description = "The VPC ID"
  value       = module.vpc.vpc_id
}