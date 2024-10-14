variable "vpc_id" {
  type        = string
  description = "The ID of the VPC to deploy EC2 instance into"
}

variable "subnet_id" {
  type        = string
  description = "The ID of the subnet to deploy EC2 instance into"
}

variable "instance_type" {
  type        = string
  description = "Type of EC2 instance"
}

variable "ami_id" {
  type        = string
  description = "AMI ID for the instance"
}

variable "key_name" {
  type        = string
  description = "Name of the SSH key pair"
}

variable "ssh_ip" {
  type        = string
  description = "Allowed IP for SSH access"
}