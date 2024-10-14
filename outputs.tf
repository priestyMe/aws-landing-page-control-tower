output "vpc_id" {
  description = "The ID of the created VPC"
  value       = module.vpc.vpc_id
}

output "ec2_public_ip" {
  description = "The public IP of the EC2 instance"
  value       = module.ec2.instance_public_ip
}

output "s3_bucket_name" {
  description = "The name of the created S3 bucket"
  value       = module.s3.bucket_name
}