variable "cidr_block" {
  type        = string
  description = "The CIDR block for the VPC"
}

variable "public_subnet_cidr" {
  type        = string
  description = "The CIDR block for the public subnet"
  default     = "10.0.1.0/24"
}
