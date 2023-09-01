# Environment
variable "env" {
  type = string
}

# Type
variable "type" {
  type = string
}

# Stack name
variable "project_name" {
  type = string
}

# VPC CIDR
variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

# CIDR of public subet in AZ1 
variable "public_subnet_az1_cidr" {
  type    = string
  default = "10.0.1.0/24"
}

# CIDR of public subet in AZ2
variable "public_subnet_az2_cidr" {
  type    = string
  default = "10.0.2.0/24"
}
