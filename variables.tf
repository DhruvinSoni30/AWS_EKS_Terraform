# Stack Name
variable "project_name" {
  type = string
}

# Worker Node instance size
variable "instance_size" {
  type = string
}

# Region
variable "region" {}

# SSH Access
variable "ssh_access" {
  type = list(string)
}

# UI Access
variable "http_access" {
  type = list(string)
}

# Environment
variable "env" {
  type    = string
  default = "Prod"
}

# Type
variable "type" {
  type    = string
  default = "Production"
}

# Key 
variable "key_name" {
  default = "Demo-key"
}
