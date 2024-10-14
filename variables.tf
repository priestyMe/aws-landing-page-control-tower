variable "vpc_name" {
  type        = string
  description = "Name of the VPC"
}

variable "vpc_cidr_block" {
  type        = string
  description = "CIDR block for the VPC"
}

variable "public_subnets" {
  type        = list(string)
  description = "List of public subnets CIDR blocks"
}

variable "private_subnets" {
  type        = list(string)
  description = "List of private subnets CIDR blocks"
}

variable "availability_zones" {
  type        = list(string)
  description = "List of availability zones to use"
}

variable "instance_type" {
  type        = string
  description = "EC2 instance type"
}

variable "ami_id" {
  type        = string
  description = "AMI ID for the EC2 instance"
}

variable "key_name" {
  type        = string
  description = "Name of the SSH key pair to use for EC2"
}

variable "ssh_ip" {
  type        = string
  description = "The IP allowed for SSH access"
}

variable "s3_bucket_name" {
  type        = string
  description = "Name of the S3 bucket"
}

variable "s3_versioning" {
  type        = bool
  description = "Enable versioning for the S3 bucket"
  default     = false
}

variable "allowed_principal_arn" {
  type        = string
  description = "ARN of the principal allowed access to the S3 bucket"
}