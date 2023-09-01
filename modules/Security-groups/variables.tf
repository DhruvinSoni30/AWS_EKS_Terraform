# VPC ID
variable "vpc_id" {
  type = string
}

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

# SSH Access
variable "ssh_access" {
  type = list(string)
}

# UI Access
variable "http_access" {
  type = list(string)
}
